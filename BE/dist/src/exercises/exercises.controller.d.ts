import { ExercisesService } from './exercises.service';
export declare class SubmitExerciseDto {
    user_answer: string;
}
export declare class ExercisesController {
    private readonly exercisesService;
    constructor(exercisesService: ExercisesService);
    getExercises(lessonId: string): Promise<{
        id: string;
        lesson_id: string;
        question: string;
    }[]>;
    submitExercise(exerciseId: string, dto: SubmitExerciseDto, req: any): Promise<{
        is_correct: boolean;
        correct_answer: string;
        explanation: string | null;
    }>;
}
