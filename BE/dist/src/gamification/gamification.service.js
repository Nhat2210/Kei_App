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
exports.GamificationService = void 0;
const common_1 = require("@nestjs/common");
const prisma_service_1 = require("../prisma/prisma.service");
let GamificationService = class GamificationService {
    prisma;
    constructor(prisma) {
        this.prisma = prisma;
    }
    async updateXpAndStreak(userId, xpToAdd) {
        const user = await this.prisma.users.findUnique({
            where: { id: userId },
        });
        if (!user)
            return null;
        const today = new Date();
        today.setHours(0, 0, 0, 0);
        let streakDays = user.streak_days;
        const lastStudyDate = user.last_study_date;
        if (lastStudyDate) {
            const lastStudy = new Date(lastStudyDate);
            lastStudy.setHours(0, 0, 0, 0);
            const diffTime = Math.abs(today.getTime() - lastStudy.getTime());
            const diffDays = Math.ceil(diffTime / (1000 * 60 * 60 * 24));
            if (diffDays === 1) {
                streakDays += 1;
            }
            else if (diffDays > 1) {
                streakDays = 1;
            }
        }
        else {
            streakDays = 1;
        }
        const updatedUser = await this.prisma.users.update({
            where: { id: userId },
            data: {
                xp_total: user.xp_total + xpToAdd,
                streak_days: streakDays,
                last_study_date: new Date(),
            },
        });
        return {
            xp_total: updatedUser.xp_total,
            streak_days: updatedUser.streak_days,
        };
    }
};
exports.GamificationService = GamificationService;
exports.GamificationService = GamificationService = __decorate([
    (0, common_1.Injectable)(),
    __metadata("design:paramtypes", [prisma_service_1.PrismaService])
], GamificationService);
//# sourceMappingURL=gamification.service.js.map