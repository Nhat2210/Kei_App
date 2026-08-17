export type SrsRating = 'hard' | 'good' | 'easy';
export interface SrsCalculationResult {
    srsLevel: number;
    easeFactor: number;
    interval: number;
}
export declare function calculateSrsNextReview(rating: SrsRating, currentSrsLevel: number, currentEaseFactor: number, currentInterval: number): SrsCalculationResult;
