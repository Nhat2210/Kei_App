import { SrsService } from './srs.service';
import { SrsRating } from './utils/sm2.util';
export declare class ReviewDto {
    rating: SrsRating;
}
export declare class SrsController {
    private readonly srsService;
    constructor(srsService: SrsService);
    getDueItems(req: any): Promise<({
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
    reviewVocabulary(vocabId: string, body: ReviewDto, req: any): Promise<{
        id: string;
        user_id: string;
        vocabulary_id: string;
        srs_level: number;
        ease_factor: number;
        next_review_at: Date;
        last_reviewed_at: Date;
        correct_streak: number;
    }>;
    reviewKanji(kanjiId: string, body: ReviewDto, req: any): Promise<{
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
