export type SrsRating = 'hard' | 'good' | 'easy';

export interface SrsCalculationResult {
  srsLevel: number;
  easeFactor: number;
  interval: number; // in days
}

/**
 * Simplified SM-2 Algorithm for Spaced Repetition
 */
export function calculateSrsNextReview(
  rating: SrsRating,
  currentSrsLevel: number,
  currentEaseFactor: number,
  currentInterval: number,
): SrsCalculationResult {
  let srsLevel = currentSrsLevel;
  let easeFactor = currentEaseFactor;
  let interval = currentInterval;

  switch (rating) {
    case 'hard':
      srsLevel = Math.max(0, srsLevel - 1);
      easeFactor = Math.max(1.3, easeFactor - 0.2);
      interval = 1; // reset or short interval
      break;

    case 'good':
      srsLevel += 1;
      // easeFactor remains the same
      if (srsLevel === 1) {
        interval = 1;
      } else if (srsLevel === 2) {
        interval = 3;
      } else {
        interval = Math.round(interval * easeFactor);
      }
      break;

    case 'easy':
      srsLevel += 1;
      easeFactor += 0.15;
      if (srsLevel === 1) {
        interval = 2;
      } else {
        interval = Math.round(interval * easeFactor * 1.3);
      }
      break;
  }

  return {
    srsLevel,
    easeFactor,
    interval,
  };
}
