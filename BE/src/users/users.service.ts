import { Injectable, NotFoundException } from '@nestjs/common';
import { PrismaService } from '../prisma/prisma.service';
import { UpdateUserDto } from './dto/update-user.dto';

@Injectable()
export class UsersService {
  constructor(private prisma: PrismaService) {}

  async findById(id: string) {
    const user = await this.prisma.users.findUnique({
      where: { id },
    });
    if (!user) {
      throw new NotFoundException('User not found');
    }
    return user;
  }

  async findByEmail(email: string) {
    return this.prisma.users.findUnique({
      where: { email },
    });
  }

  async create(data: any) {
    return this.prisma.users.create({
      data,
    });
  }

  async update(id: string, data: any) {
    return this.prisma.users.update({
      where: { id },
      data,
    });
  }

  async updateProfile(id: string, updateUserDto: UpdateUserDto) {
    await this.findById(id); // Ensure user exists
    return this.update(id, updateUserDto);
  }
}
