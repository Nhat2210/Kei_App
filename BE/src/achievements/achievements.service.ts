import { Injectable } from '@nestjs/common';
import { PrismaService } from '../prisma/prisma.service';

@Injectable()
export class AchievementsService {
  constructor(private prisma: PrismaService) {}

  async getMyAchievements(userId: string) {
    const user = await this.prisma.users.findUnique({
      where: { id: userId },
    });

    const completedLessons = await this.prisma.user_lesson_progress.count({
      where: { user_id: userId, status: 'completed' },
    });

    const achievements = await this.prisma.achievements.findMany();
    
    // Check unlocked status and progress
    const result = achievements.map((ach) => {
      let progress = 0;
      let isUnlocked = false;

      switch (ach.requirement_type) {
        case 'xp':
          progress = user?.xp_total || 0;
          break;
        case 'streak':
          progress = user?.streak_days || 0;
          break;
        case 'lessons':
          progress = completedLessons;
          break;
        default:
          progress = 0;
      }

      isUnlocked = progress >= ach.requirement_value;
      const progressPercent = Math.min(100, Math.round((progress / ach.requirement_value) * 100));

      return {
        id: ach.id,
        code: ach.code,
        name: ach.name,
        description: ach.description,
        is_unlocked: isUnlocked,
        progress_percent: progressPercent,
      };
    });

    return result;
  }
}
