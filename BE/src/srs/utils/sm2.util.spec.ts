import { calculateSrsNextReview } from './sm2.util';

describe('SM-2 Algorithm', () => {
  it('should calculate initial good rating correctly', () => {
    const result = calculateSrsNextReview('good', 0, 2.5, 0);
    expect(result.srsLevel).toBe(1);
    expect(result.easeFactor).toBe(2.5);
    expect(result.interval).toBe(1);
  });

  it('should decrease ease factor and reset interval for hard rating', () => {
    const result = calculateSrsNextReview('hard', 2, 2.5, 3);
    expect(result.srsLevel).toBe(1);
    expect(result.easeFactor).toBe(2.3);
    expect(result.interval).toBe(1);
  });

  it('should increase ease factor and interval for easy rating', () => {
    const result = calculateSrsNextReview('easy', 1, 2.5, 1);
    expect(result.srsLevel).toBe(2);
    expect(result.easeFactor).toBe(2.65); // 2.5 + 0.15
    expect(result.interval).toBe(Math.round(1 * 2.65 * 1.3));
  });

  it('should not lower ease factor below 1.3', () => {
    const result = calculateSrsNextReview('hard', 0, 1.4, 1);
    expect(result.easeFactor).toBe(1.3);
  });
});
