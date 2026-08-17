import { JwtService } from '@nestjs/jwt';
import { UsersService } from '../users/users.service';
import { RegisterDto, LoginDto } from './dto/auth.dto';
export declare class AuthService {
    private usersService;
    private jwtService;
    constructor(usersService: UsersService, jwtService: JwtService);
    register(registerDto: RegisterDto): Promise<{
        access_token: string;
        refresh_token: string;
        user: {
            id: string;
            display_name: string | null;
            avatar: string | null;
            current_level_id: string | null;
            daily_goal_xp: number;
            email: string;
            xp_total: number;
            streak_days: number;
            last_study_date: Date | null;
            created_at: Date;
            updated_at: Date;
        };
    }>;
    login(loginDto: LoginDto): Promise<{
        access_token: string;
        refresh_token: string;
        user: {
            id: string;
            display_name: string | null;
            avatar: string | null;
            current_level_id: string | null;
            daily_goal_xp: number;
            email: string;
            xp_total: number;
            streak_days: number;
            last_study_date: Date | null;
            created_at: Date;
            updated_at: Date;
        };
    }>;
    refresh(refreshToken: string): Promise<{
        access_token: string;
        refresh_token: string;
        user: {
            id: string;
            display_name: string | null;
            avatar: string | null;
            current_level_id: string | null;
            daily_goal_xp: number;
            email: string;
            xp_total: number;
            streak_days: number;
            last_study_date: Date | null;
            created_at: Date;
            updated_at: Date;
        };
    }>;
    logout(userId: string): Promise<{
        loggedOut: boolean;
    }>;
    private generateTokens;
}
