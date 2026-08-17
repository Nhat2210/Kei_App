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
exports.SrsService = void 0;
const common_1 = require("@nestjs/common");
const prisma_service_1 = require("../prisma/prisma.service");
const sm2_util_1 = require("./utils/sm2.util");
let SrsService = class SrsService {
    prisma;
    constructor(prisma) {
        this.prisma = prisma;
    }
    async getDueItems(userId) {
        const now = new Date();
        const dueVocab = await this.prisma.user_vocabulary_progress.findMany({
            where: {
                user_id: userId,
                next_review_at: { lte: now },
            },
            include: { vocabulary: true },
        });
        const dueKanji = await this.prisma.user_kanji_progress.findMany({
            where: {
                user_id: userId,
                next_review_at: { lte: now },
            },
            include: { kanji: true },
        });
        const combined = [
            ...dueVocab.map((v) => ({ type: 'vocabulary', ...v })),
            ...dueKanji.map((k) => ({ type: 'kanji', ...k })),
        ].sort((a, b) => a.next_review_at.getTime() - b.next_review_at.getTime());
        return combined;
    }
    async reviewVocabulary(userId, vocabId, rating) {
        const record = await this.prisma.user_vocabulary_progress.findUnique({
            where: { user_id_vocabulary_id: { user_id: userId, vocabulary_id: vocabId } },
        });
        const currentSrsLevel = record?.srs_level || 0;
        const currentEaseFactor = record?.ease_factor || 2.5;
        let currentInterval = 0;
        if (record) {
            currentInterval = Math.round((record.next_review_at.getTime() - record.last_reviewed_at.getTime()) / (1000 * 3600 * 24));
            if (currentInterval < 0)
                currentInterval = 1;
        }
        const { srsLevel, easeFactor, interval } = (0, sm2_util_1.calculateSrsNextReview)(rating, currentSrsLevel, currentEaseFactor, currentInterval);
        const nextReviewAt = new Date();
        nextReviewAt.setDate(nextReviewAt.getDate() + interval);
        const correctStreak = rating === 'hard' ? 0 : (record?.correct_streak || 0) + 1;
        return this.prisma.user_vocabulary_progress.upsert({
            where: { user_id_vocabulary_id: { user_id: userId, vocabulary_id: vocabId } },
            update: {
                srs_level: srsLevel,
                ease_factor: easeFactor,
                next_review_at: nextReviewAt,
                last_reviewed_at: new Date(),
                correct_streak: correctStreak,
            },
            create: {
                user_id: userId,
                vocabulary_id: vocabId,
                srs_level: srsLevel,
                ease_factor: easeFactor,
                next_review_at: nextReviewAt,
                correct_streak: correctStreak,
            },
        });
    }
    async reviewKanji(userId, kanjiId, rating) {
        const record = await this.prisma.user_kanji_progress.findUnique({
            where: { user_id_kanji_id: { user_id: userId, kanji_id: kanjiId } },
        });
        const currentSrsLevel = record?.srs_level || 0;
        const currentEaseFactor = record?.ease_factor || 2.5;
        let currentInterval = 0;
        if (record) {
            currentInterval = Math.round((record.next_review_at.getTime() - record.last_reviewed_at.getTime()) / (1000 * 3600 * 24));
            if (currentInterval < 0)
                currentInterval = 1;
        }
        const { srsLevel, easeFactor, interval } = (0, sm2_util_1.calculateSrsNextReview)(rating, currentSrsLevel, currentEaseFactor, currentInterval);
        const nextReviewAt = new Date();
        nextReviewAt.setDate(nextReviewAt.getDate() + interval);
        const correctStreak = rating === 'hard' ? 0 : (record?.correct_streak || 0) + 1;
        return this.prisma.user_kanji_progress.upsert({
            where: { user_id_kanji_id: { user_id: userId, kanji_id: kanjiId } },
            update: {
                srs_level: srsLevel,
                ease_factor: easeFactor,
                next_review_at: nextReviewAt,
                last_reviewed_at: new Date(),
                correct_streak: correctStreak,
            },
            create: {
                user_id: userId,
                kanji_id: kanjiId,
                srs_level: srsLevel,
                ease_factor: easeFactor,
                next_review_at: nextReviewAt,
                correct_streak: correctStreak,
            },
        });
    }
};
exports.SrsService = SrsService;
exports.SrsService = SrsService = __decorate([
    (0, common_1.Injectable)(),
    __metadata("design:paramtypes", [prisma_service_1.PrismaService])
], SrsService);
//# sourceMappingURL=srs.service.js.map