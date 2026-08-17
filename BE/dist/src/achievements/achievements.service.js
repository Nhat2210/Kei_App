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
exports.AchievementsService = void 0;
const common_1 = require("@nestjs/common");
const prisma_service_1 = require("../prisma/prisma.service");
let AchievementsService = class AchievementsService {
    prisma;
    constructor(prisma) {
        this.prisma = prisma;
    }
    async getMyAchievements(userId) {
        const user = await this.prisma.users.findUnique({
            where: { id: userId },
        });
        const completedLessons = await this.prisma.user_lesson_progress.count({
            where: { user_id: userId, status: 'completed' },
        });
        const achievements = await this.prisma.achievements.findMany();
        const result = achievements.map((ach) => {
            let progress = 0;
            let isUnlocked = false;
            switch (ach.requirement_type) {
                case 'xp':
                    progress = user?.xp_total || 0;
                    break;
                case 'streak':
                    progress = user?.streak_days || 0;
                    break;
                case 'lessons':
                    progress = completedLessons;
                    break;
                default:
                    progress = 0;
            }
            isUnlocked = progress >= ach.requirement_value;
            const progressPercent = Math.min(100, Math.round((progress / ach.requirement_value) * 100));
            return {
                id: ach.id,
                code: ach.code,
                name: ach.name,
                description: ach.description,
                is_unlocked: isUnlocked,
                progress_percent: progressPercent,
            };
        });
        return result;
    }
};
exports.AchievementsService = AchievementsService;
exports.AchievementsService = AchievementsService = __decorate([
    (0, common_1.Injectable)(),
    __metadata("design:paramtypes", [prisma_service_1.PrismaService])
], AchievementsService);
//# sourceMappingURL=achievements.service.js.map