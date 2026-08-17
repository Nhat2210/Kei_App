export declare class ExerciseResultDto {
    exercise_id: string;
    user_answer: string;
    is_correct: boolean;
}
export declare class CompleteLessonDto {
    score: number;
    exercise_results: ExerciseResultDto[];
}
