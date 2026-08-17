import { AchievementsService } from './achievements.service';
export declare class AchievementsController {
    private readonly achievementsService;
    constructor(achievementsService: AchievementsService);
    getMyAchievements(req: any): Promise<{
        id: string;
        code: string;
        name: string;
        description: string;
        is_unlocked: boolean;
        progress_percent: number;
    }[]>;
}
