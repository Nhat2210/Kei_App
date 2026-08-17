import { Injectable } from '@nestjs/common';
import { PrismaService } from '../prisma/prisma.service';

@Injectable()
export class LevelsService {
  constructor(private prisma: PrismaService) {}

  async findAll(userId?: string) {
    const levels = await this.prisma.levels.findMany({
      orderBy: { sort_order: 'asc' },
      include: {
        modules: {
          include: {
            lessons: true,
          },
        },
      },
    });

    return Promise.all(
      levels.map(async (level) => {
        let progressPercent = 0;
        
        if (userId) {
          const totalLessons = level.modules.reduce(
            (acc, mod) => acc + mod.lessons.length,
            0,
          );

          if (totalLessons > 0) {
            const lessonIds = level.modules.flatMap((m) => m.lessons.map((l) => l.id));
            const completedCount = await this.prisma.user_lesson_progress.count({
              where: {
                user_id: userId,
                lesson_id: { in: lessonIds },
                status: 'completed',
              },
            });
            progressPercent = Math.round((completedCount / totalLessons) * 100);
          }
        }

        // Remove modules/lessons details to keep response clean
        const { modules, ...levelData } = level;
        return {
          ...levelData,
          progressPercent,
        };
      }),
    );
  }
}
