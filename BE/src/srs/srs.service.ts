import { Injectable } from '@nestjs/common';
import { PrismaService } from '../prisma/prisma.service';
import { calculateSrsNextReview, SrsRating } from './utils/sm2.util';

@Injectable()
export class SrsService {
  constructor(private prisma: PrismaService) {}

  async getDueItems(userId: string) {
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

    // Combine and sort by how overdue they are (oldest next_review_at first)
    const combined = [
      ...dueVocab.map((v) => ({ type: 'vocabulary', ...v })),
      ...dueKanji.map((k) => ({ type: 'kanji', ...k })),
    ].sort((a, b) => a.next_review_at.getTime() - b.next_review_at.getTime());

    return combined;
  }

  async reviewVocabulary(userId: string, vocabId: string, rating: SrsRating) {
    const record = await this.prisma.user_vocabulary_progress.findUnique({
      where: { user_id_vocabulary_id: { user_id: userId, vocabulary_id: vocabId } },
    });

    const currentSrsLevel = record?.srs_level || 0;
    const currentEaseFactor = record?.ease_factor || 2.5;
    // We assume interval could be inferred, but let's store it or approximate. 
    // Since interval is not stored, we can approximate interval by days between last_reviewed_at and next_review_at
    // But since SM-2 needs current interval, let's just approximate if missing.
    // For simplicity, let's calculate interval based on currentSrsLevel or add a field. We don't have interval in schema.
    // We'll approximate: 
    let currentInterval = 0;
    if (record) {
      currentInterval = Math.round((record.next_review_at.getTime() - record.last_reviewed_at.getTime()) / (1000 * 3600 * 24));
      if (currentInterval < 0) currentInterval = 1;
    }

    const { srsLevel, easeFactor, interval } = calculateSrsNextReview(
      rating,
      currentSrsLevel,
      currentEaseFactor,
      currentInterval,
    );

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

  async reviewKanji(userId: string, kanjiId: string, rating: SrsRating) {
    const record = await this.prisma.user_kanji_progress.findUnique({
      where: { user_id_kanji_id: { user_id: userId, kanji_id: kanjiId } },
    });

    const currentSrsLevel = record?.srs_level || 0;
    const currentEaseFactor = record?.ease_factor || 2.5;
    let currentInterval = 0;
    if (record) {
      currentInterval = Math.round((record.next_review_at.getTime() - record.last_reviewed_at.getTime()) / (1000 * 3600 * 24));
      if (currentInterval < 0) currentInterval = 1;
    }

    const { srsLevel, easeFactor, interval } = calculateSrsNextReview(
      rating,
      currentSrsLevel,
      currentEaseFactor,
      currentInterval,
    );

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
}
