import { PrismaService } from '../prisma/prisma.service';
export declare class ExercisesService {
    private prisma;
    constructor(prisma: PrismaService);
    getExercisesByLessonId(lessonId: string): Promise<{
        id: string;
        lesson_id: string;
        question: string;
    }[]>;
    submitExercise(userId: string, exerciseId: string, userAnswer: string): Promise<{
        is_correct: boolean;
        correct_answer: string;
        explanation: string | null;
    }>;
}
