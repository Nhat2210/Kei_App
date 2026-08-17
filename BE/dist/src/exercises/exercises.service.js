"use strict";
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.ExercisesService = void 0;
const common_1 = require("@nestjs/common");
const prisma_service_1 = require("../prisma/prisma.service");
let ExercisesService = class ExercisesService {
    prisma;
    constructor(prisma) {
        this.prisma = prisma;
    }
    async getExercisesByLessonId(lessonId) {
        const exercises = await this.prisma.exercises.findMany({
            where: { lesson_id: lessonId },
            select: {
                id: true,
                lesson_id: true,
                question: true,
            },
        });
        return exercises;
    }
    async submitExercise(userId, exerciseId, userAnswer) {
        const exercise = await this.prisma.exercises.findUnique({
            where: { id: exerciseId },
        });
        if (!exercise) {
            throw new common_1.NotFoundException('Exercise not found');
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
};
exports.ExercisesService = ExercisesService;
exports.ExercisesService = ExercisesService = __decorate([
    (0, common_1.Injectable)(),
    __metadata("design:paramtypes", [prisma_service_1.PrismaService])
], ExercisesService);
//# sourceMappingURL=exercises.service.js.map