import { ProgressService } from './progress.service';
import { CompleteLessonDto } from './dto/complete-lesson.dto';
export declare class ProgressController {
    private progressService;
    constructor(progressService: ProgressService);
    completeLesson(lessonId: string, dto: CompleteLessonDto, req: any): Promise<{
        xp_received: number;
        total_xp: number;
        streak_days: number;
        is_next_module_unlocked: boolean;
    }>;
    getSummary(req: any): Promise<{
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
