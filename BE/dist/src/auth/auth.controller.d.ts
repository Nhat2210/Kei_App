import { AuthService } from './auth.service';
import { RegisterDto, LoginDto, RefreshDto } from './dto/auth.dto';
export declare class AuthController {
    private authService;
    constructor(authService: AuthService);
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
    refresh(refreshDto: RefreshDto): Promise<{
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
    logout(req: any): Promise<{
        loggedOut: boolean;
    }>;
}
