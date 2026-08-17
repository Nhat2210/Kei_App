import { PrismaService } from '../prisma/prisma.service';
import { SrsRating } from './utils/sm2.util';
export declare class SrsService {
    private prisma;
    constructor(prisma: PrismaService);
    getDueItems(userId: string): Promise<({
        vocabulary: {
            id: string;
            word: string;
            meaning: string;
            reading: string;
        };
        id: string;
        user_id: string;
        vocabulary_id: string;
        srs_level: number;
        ease_factor: number;
        next_review_at: Date;
        last_reviewed_at: Date;
        correct_streak: number;
        type: string;
    } | {
        kanji: {
            id: string;
            meaning: string;
            character: string;
            onyomi: string | null;
            kunyomi: string | null;
        };
        id: string;
        user_id: string;
        kanji_id: string;
        srs_level: number;
        ease_factor: number;
        next_review_at: Date;
        last_reviewed_at: Date;
        correct_streak: number;
        type: string;
    })[]>;
    reviewVocabulary(userId: string, vocabId: string, rating: SrsRating): Promise<{
        id: string;
        user_id: string;
        vocabulary_id: string;
        srs_level: number;
        ease_factor: number;
        next_review_at: Date;
        last_reviewed_at: Date;
        correct_streak: number;
    }>;
    reviewKanji(userId: string, kanjiId: string, rating: SrsRating): Promise<{
        id: string;
        user_id: string;
        kanji_id: string;
        srs_level: number;
        ease_factor: number;
        next_review_at: Date;
        last_reviewed_at: Date;
        correct_streak: number;
    }>;
}
