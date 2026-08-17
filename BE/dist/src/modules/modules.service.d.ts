import { PrismaService } from '../prisma/prisma.service';
export declare class ModulesService {
    private prisma;
    constructor(prisma: PrismaService);
    findByLevelCode(levelCode: string, userId?: string): Promise<any[]>;
}
