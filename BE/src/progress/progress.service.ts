import { Injectable, NotFoundException } from '@nestjs/common';
import { PrismaService } from '../prisma/prisma.service';
import { GamificationService } from '../gamification/gamification.service';
import { CompleteLessonDto } from './dto/complete-lesson.dto';

@Injectable()
export class ProgressService {
  constructor(
    private prisma: PrismaService,
    private gamification: GamificationService,
  ) {}

  async completeLesson(userId: string, lessonId: string, dto: CompleteLessonDto) {
    const lesson = await this.prisma.lessons.findUnique({
      where: { id: lessonId },
    });

    if (!lesson) {
      throw new NotFoundException('Lesson not found');
    }

    // 1. Write to exercise_attempts
    if (dto.exercise_results && dto.exercise_results.length > 0) {
      await this.prisma.exercise_attempts.createMany({
        data: dto.exercise_results.map((res) => ({
          user_id: userId,
          exercise_id: res.exercise_id,
          user_answer: res.user_answer,
          is_correct: res.is_correct,
        })),
      });
    }

    // 2. Upsert user_lesson_progress
    await this.prisma.user_lesson_progress.upsert({
      where: {
        user_id_lesson_id: {
          user_id: userId,
          lesson_id: lessonId,
        },
      },
      update: {
        status: 'completed',
        score: dto.score,
        completed_at: new Date(),
      },
      create: {
        user_id: userId,
        lesson_id: lessonId,
        status: 'completed',
        score: dto.score,
      },
    });

    // 3. Update XP and Streak
    const gamificationResult = await this.gamification.updateXpAndStreak(
      userId,
      lesson.xp_reward,
    );

    // 4. Check if next module is unlocked (if this module hits >= 80%)
    let isNextModuleUnlocked = false;
    const currentModule = await this.prisma.modules.findUnique({
      where: { id: lesson.module_id },
      include: { lessons: true },
    });

    if (currentModule) {
      const totalLessons = currentModule.lessons.length;
      if (totalLessons > 0) {
        const lessonIds = currentModule.lessons.map((l) => l.id);
        const completedCount = await this.prisma.user_lesson_progress.count({
          where: {
            user_id: userId,
            lesson_id: { in: lessonIds },
            status: 'completed',
          },
        });
        
        const completionRate = completedCount / totalLessons;
        isNextModuleUnlocked = completionRate >= 0.8;
      }
    }

    return {
      xp_received: lesson.xp_reward,
      total_xp: gamificationResult?.xp_total ?? 0,
      streak_days: gamificationResult?.streak_days ?? 0,
      is_next_module_unlocked: isNextModuleUnlocked,
    };
  }

  async getSummary(userId: string) {
    const user = await this.prisma.users.findUnique({ where: { id: userId } });
    
    // Level progress
    const levels = await this.prisma.levels.findMany({
      include: { modules: { include: { lessons: true } } }
    });

    const levelProgress = await Promise.all(levels.map(async (level) => {
      const totalLessons = level.modules.reduce((acc, mod) => acc + mod.lessons.length, 0);
      let progressPercent = 0;
      if (totalLessons > 0) {
        const lessonIds = level.modules.flatMap(m => m.lessons.map(l => l.id));
        const completedCount = await this.prisma.user_lesson_progress.count({
          where: {
            user_id: userId,
            lesson_id: { in: lessonIds },
            status: 'completed',
          },
        });
        progressPercent = Math.round((completedCount / totalLessons) * 100);
      }
      return { level_code: level.code, progress_percent: progressPercent };
    }));

    // Vocab & Kanji learned (count where srs_level > 0 or has record)
    const vocabLearned = await this.prisma.user_vocabulary_progress.count({ where: { user_id: userId } });
    const kanjiLearned = await this.prisma.user_kanji_progress.count({ where: { user_id: userId } });

    // Study minutes 7 days
    const sevenDaysAgo = new Date();
    sevenDaysAgo.setDate(sevenDaysAgo.getDate() - 7);
    const sessions = await this.prisma.study_sessions.findMany({
      where: {
        user_id: userId,
        date: { gte: sevenDaysAgo }
      }
    });

    const study_minutes_7_days = sessions.reduce((acc, s) => acc + s.minutes, 0);

    return {
      level_progress: levelProgress,
      total_vocabulary_learned: vocabLearned,
      total_kanji_learned: kanjiLearned,
      streak_days: user?.streak_days || 0,
      xp_total: user?.xp_total || 0,
      study_minutes_7_days,
    };
  }
}
