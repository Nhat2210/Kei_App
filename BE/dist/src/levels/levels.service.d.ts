import { PrismaService } from '../prisma/prisma.service';
export declare class LevelsService {
    private prisma;
    constructor(prisma: PrismaService);
    findAll(userId?: string): Promise<{
        progressPercent: number;
        id: string;
        code: string;
        name: string;
        is_active: boolean;
        sort_order: number;
    }[]>;
}
