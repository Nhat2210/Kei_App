"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.calculateSrsNextReview = calculateSrsNextReview;
function calculateSrsNextReview(rating, currentSrsLevel, currentEaseFactor, currentInterval) {
    let srsLevel = currentSrsLevel;
    let easeFactor = currentEaseFactor;
    let interval = currentInterval;
    switch (rating) {
        case 'hard':
            srsLevel = Math.max(0, srsLevel - 1);
            easeFactor = Math.max(1.3, easeFactor - 0.2);
            interval = 1;
            break;
        case 'good':
            srsLevel += 1;
            if (srsLevel === 1) {
                interval = 1;
            }
            else if (srsLevel === 2) {
                interval = 3;
            }
            else {
                interval = Math.round(interval * easeFactor);
            }
            break;
        case 'easy':
            srsLevel += 1;
            easeFactor += 0.15;
            if (srsLevel === 1) {
                interval = 2;
            }
            else {
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
//# sourceMappingURL=sm2.util.js.map