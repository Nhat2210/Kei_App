import { Injectable, NotFoundException } from '@nestjs/common';
import { PrismaService } from '../prisma/prisma.service';

@Injectable()
export class ExercisesService {
  constructor(private prisma: PrismaService) {}

  async getExercisesByLessonId(lessonId: string) {
    const exercises = await this.prisma.exercises.findMany({
      where: { lesson_id: lessonId },
      select: {
        id: true,
        lesson_id: true,
        question: true,
        // intentionally excluding correct_answer and explanation
      },
    });

    return exercises;
  }

  async submitExercise(userId: string, exerciseId: string, userAnswer: string) {
    const exercise = await this.prisma.exercises.findUnique({
      where: { id: exerciseId },
    });

    if (!exercise) {
      throw new NotFoundException('Exercise not found');
    }

    const isCorrect = exercise.correct_answer === userAnswer;

    await this.prisma.exercise_attempts.create({
      data: {
        user_id: userId,
        exercise_id: exerciseId,
        user_answer: userAnswer,
        is_correct: isCorrect,
      },
    });

    return {
      is_correct: isCorrect,
      correct_answer: exercise.correct_answer,
      explanation: exercise.explanation,
    };
  }
}
