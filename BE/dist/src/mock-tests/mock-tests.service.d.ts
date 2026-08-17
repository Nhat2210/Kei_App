import { PrismaService } from '../prisma/prisma.service';
export declare class MockTestsService {
    private prisma;
    constructor(prisma: PrismaService);
    getMockTestsByLevelCode(levelCode: string): Promise<{
        id: string;
        level_id: string;
        title: string;
    }[]>;
}
