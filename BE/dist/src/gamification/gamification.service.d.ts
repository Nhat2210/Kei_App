import { PrismaService } from '../prisma/prisma.service';
export declare class GamificationService {
    private prisma;
    constructor(prisma: PrismaService);
    updateXpAndStreak(userId: string, xpToAdd: number): Promise<{
        xp_total: number;
        streak_days: number;
    } | null>;
}
