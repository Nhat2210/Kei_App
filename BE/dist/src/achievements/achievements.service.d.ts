import { PrismaService } from '../prisma/prisma.service';
export declare class AchievementsService {
    private prisma;
    constructor(prisma: PrismaService);
    getMyAchievements(userId: string): Promise<{
        id: string;
        code: string;
        name: string;
        description: string;
        is_unlocked: boolean;
        progress_percent: number;
    }[]>;
}
