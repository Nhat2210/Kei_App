import { Injectable, NotFoundException } from '@nestjs/common';
import { PrismaService } from '../prisma/prisma.service';

@Injectable()
export class ModulesService {
  constructor(private prisma: PrismaService) {}

  async findByLevelCode(levelCode: string, userId?: string) {
    const level = await this.prisma.levels.findUnique({
      where: { code: levelCode },
      include: {
        modules: {
          orderBy: { sort_order: 'asc' },
          include: {
            lessons: true,
          },
        },
      },
    });

    if (!level) {
      throw new NotFoundException('Level not found');
    }

    const result: any[] = [];
    let isPreviousModuleUnlocked = true;

    for (let i = 0; i < level.modules.length; i++) {
      const mod = level.modules[i];
      let isLocked = !isPreviousModuleUnlocked;
      
      if (i === 0) {
        isLocked = false; // First module is always unlocked
      }

      let completedLessons = 0;
      const totalLessons = mod.lessons.length;

      if (userId && totalLessons > 0) {
        const lessonIds = mod.lessons.map((l) => l.id);
        completedLessons = await this.prisma.user_lesson_progress.count({
          where: {
            user_id: userId,
            lesson_id: { in: lessonIds },
            status: 'completed',
          },
        });
      }

      const completionRate = totalLessons > 0 ? completedLessons / totalLessons : 0;
      
      // Update for the NEXT module
      isPreviousModuleUnlocked = completionRate >= 0.8;

      const { lessons, ...moduleData } = mod;
      result.push({
        ...moduleData,
        isLocked,
        progressPercent: Math.round(completionRate * 100),
      });
    }

    return result;
  }
}
