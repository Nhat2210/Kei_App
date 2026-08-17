import { UsersService } from './users.service';
import { UpdateUserDto } from './dto/update-user.dto';
export declare class UsersController {
    private readonly usersService;
    constructor(usersService: UsersService);
    getProfile(req: any): Promise<{
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
    }>;
    updateProfile(req: any, updateUserDto: UpdateUserDto): Promise<{
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
    }>;
}
