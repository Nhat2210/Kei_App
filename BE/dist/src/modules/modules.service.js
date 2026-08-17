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
exports.ModulesService = void 0;
const common_1 = require("@nestjs/common");
const prisma_service_1 = require("../prisma/prisma.service");
let ModulesService = class ModulesService {
    prisma;
    constructor(prisma) {
        this.prisma = prisma;
    }
    async findByLevelCode(levelCode, userId) {
        const level = await this.prisma.levels.findUnique({
            where: { code: levelCode },
            include: {
                modules: {
                    orderBy: { sort_order: 'asc' },
                    include: {
                        lessons: true,
                    },
                },
            },
        });
        if (!level) {
            throw new common_1.NotFoundException('Level not found');
        }
        const result = [];
        let isPreviousModuleUnlocked = true;
        for (let i = 0; i < level.modules.length; i++) {
            const mod = level.modules[i];
            let isLocked = !isPreviousModuleUnlocked;
            if (i === 0) {
                isLocked = false;
            }
            let completedLessons = 0;
            const totalLessons = mod.lessons.length;
            if (userId && totalLessons > 0) {
                const lessonIds = mod.lessons.map((l) => l.id);
                completedLessons = await this.prisma.user_lesson_progress.count({
                    where: {
                        user_id: userId,
                        lesson_id: { in: lessonIds },
                        status: 'completed',
                    },
                });
            }
            const completionRate = totalLessons > 0 ? completedLessons / totalLessons : 0;
            isPreviousModuleUnlocked = completionRate >= 0.8;
            const { lessons, ...moduleData } = mod;
            result.push({
                ...moduleData,
                isLocked,
                progressPercent: Math.round(completionRate * 100),
            });
        }
        return result;
    }
};
exports.ModulesService = ModulesService;
exports.ModulesService = ModulesService = __decorate([
    (0, common_1.Injectable)(),
    __metadata("design:paramtypes", [prisma_service_1.PrismaService])
], ModulesService);
//# sourceMappingURL=modules.service.js.map