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
exports.ProgressService = void 0;
const common_1 = require("@nestjs/common");
const prisma_service_1 = require("../prisma/prisma.service");
const gamification_service_1 = require("../gamification/gamification.service");
let ProgressService = class ProgressService {
    prisma;
    gamification;
    constructor(prisma, gamification) {
        this.prisma = prisma;
        this.gamification = gamification;
    }
    async completeLesson(userId, lessonId, dto) {
        const lesson = await this.prisma.lessons.findUnique({
            where: { id: lessonId },
        });
        if (!lesson) {
            throw new common_1.NotFoundException('Lesson not found');
        }
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
        const gamificationResult = await this.gamification.updateXpAndStreak(userId, lesson.xp_reward);
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
    async getSummary(userId) {
        const user = await this.prisma.users.findUnique({ where: { id: userId } });
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
        const vocabLearned = await this.prisma.user_vocabulary_progress.count({ where: { user_id: userId } });
        const kanjiLearned = await this.prisma.user_kanji_progress.count({ where: { user_id: userId } });
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
};
exports.ProgressService = ProgressService;
exports.ProgressService = ProgressService = __decorate([
    (0, common_1.Injectable)(),
    __metadata("design:paramtypes", [prisma_service_1.PrismaService,
        gamification_service_1.GamificationService])
], ProgressService);
//# sourceMappingURL=progress.service.js.map