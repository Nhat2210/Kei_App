import { PrismaService } from '../prisma/prisma.service';
import { GamificationService } from '../gamification/gamification.service';
import { CompleteLessonDto } from './dto/complete-lesson.dto';
export declare class ProgressService {
    private prisma;
    private gamification;
    constructor(prisma: PrismaService, gamification: GamificationService);
    completeLesson(userId: string, lessonId: string, dto: CompleteLessonDto): Promise<{
        xp_received: number;
        total_xp: number;
        streak_days: number;
        is_next_module_unlocked: boolean;
    }>;
    getSummary(userId: string): Promise<{
        level_progress: {
            level_code: string;
            progress_percent: number;
        }[];
        total_vocabulary_learned: number;
        total_kanji_learned: number;
        streak_days: number;
        xp_total: number;
        study_minutes_7_days: number;
    }>;
}
