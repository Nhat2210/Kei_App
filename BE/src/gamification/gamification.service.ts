import { Injectable } from '@nestjs/common';
import { PrismaService } from '../prisma/prisma.service';

@Injectable()
export class GamificationService {
  constructor(private prisma: PrismaService) {}

  async updateXpAndStreak(userId: string, xpToAdd: number) {
    const user = await this.prisma.users.findUnique({
      where: { id: userId },
    });

    if (!user) return null;

    const today = new Date();
    today.setHours(0, 0, 0, 0);

    let streakDays = user.streak_days;
    const lastStudyDate = user.last_study_date;

    if (lastStudyDate) {
      const lastStudy = new Date(lastStudyDate);
      lastStudy.setHours(0, 0, 0, 0);

      const diffTime = Math.abs(today.getTime() - lastStudy.getTime());
      const diffDays = Math.ceil(diffTime / (1000 * 60 * 60 * 24));

      if (diffDays === 1) {
        streakDays += 1;
      } else if (diffDays > 1) {
        streakDays = 1; // Reset
      }
      // If diffDays === 0, it means same day, keep streakDays as is
    } else {
      streakDays = 1;
    }

    const updatedUser = await this.prisma.users.update({
      where: { id: userId },
      data: {
        xp_total: user.xp_total + xpToAdd,
        streak_days: streakDays,
        last_study_date: new Date(),
      },
    });

    return {
      xp_total: updatedUser.xp_total,
      streak_days: updatedUser.streak_days,
    };
  }
}
