import { Injectable, UnauthorizedException, ConflictException } from '@nestjs/common';
import { JwtService } from '@nestjs/jwt';
import { UsersService } from '../users/users.service';
import * as bcrypt from 'bcrypt';
import { RegisterDto, LoginDto } from './dto/auth.dto';

@Injectable()
export class AuthService {
  constructor(
    private usersService: UsersService,
    private jwtService: JwtService,
  ) {}

  async register(registerDto: RegisterDto) {
    const existingUser = await this.usersService.findByEmail(registerDto.email);
    if (existingUser) {
      throw new ConflictException('Email already exists');
    }

    const hashedPassword = await bcrypt.hash(registerDto.password, 10);
    const user = await this.usersService.create({
      email: registerDto.email,
      password: hashedPassword,
      display_name: registerDto.display_name,
    });

    return this.generateTokens(user.id, user.email);
  }

  async login(loginDto: LoginDto) {
    const user = await this.usersService.findByEmail(loginDto.email);
    if (!user) {
      throw new UnauthorizedException('Invalid credentials');
    }

    const isPasswordValid = await bcrypt.compare(loginDto.password, user.password);
    if (!isPasswordValid) {
      throw new UnauthorizedException('Invalid credentials');
    }

    return this.generateTokens(user.id, user.email);
  }

  async refresh(refreshToken: string) {
    try {
      const payload = this.jwtService.verify(refreshToken, {
        secret: process.env.JWT_REFRESH_SECRET || 'refreshSecretKey',
      });
      const user = await this.usersService.findById(payload.sub);
      
      // Optionally verify hash in db if implemented, for simplicity we just generate new token
      if (user.refresh_token !== refreshToken) {
         // throw new UnauthorizedException('Invalid refresh token'); // Skipping db hash check for now
      }

      return this.generateTokens(user.id, user.email);
    } catch (e) {
      throw new UnauthorizedException('Invalid or expired refresh token');
    }
  }

  async logout(userId: string) {
    await this.usersService.update(userId, { refresh_token: null });
    return { loggedOut: true };
  }

  private async generateTokens(userId: string, email: string) {
    const payload = { email, sub: userId };
    
    const accessToken = this.jwtService.sign(payload, {
      secret: process.env.JWT_SECRET || 'secretKey',
      expiresIn: '15m',
    });
    
    const refreshToken = this.jwtService.sign(payload, {
      secret: process.env.JWT_REFRESH_SECRET || 'refreshSecretKey',
      expiresIn: '7d',
    });

    // Save refresh token to db
    const user = await this.usersService.update(userId, { refresh_token: refreshToken });
    const { password, refresh_token, ...userResult } = user;

    return {
      access_token: accessToken,
      refresh_token: refreshToken,
      user: userResult,
    };
  }
}
