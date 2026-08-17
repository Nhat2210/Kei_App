import { Injectable, NotFoundException } from '@nestjs/common';
import { PrismaService } from '../prisma/prisma.service';

@Injectable()
export class MockTestsService {
  constructor(private prisma: PrismaService) {}

  async getMockTestsByLevelCode(levelCode: string) {
    const level = await this.prisma.levels.findUnique({
      where: { code: levelCode },
    });

    if (!level) {
      throw new NotFoundException('Level not found');
    }

    return this.prisma.mock_tests.findMany({
      where: { level_id: level.id },
    });
  }
}
