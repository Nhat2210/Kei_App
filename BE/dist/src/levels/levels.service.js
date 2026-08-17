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
exports.LevelsService = void 0;
const common_1 = require("@nestjs/common");
const prisma_service_1 = require("../prisma/prisma.service");
let LevelsService = class LevelsService {
    prisma;
    constructor(prisma) {
        this.prisma = prisma;
    }
    async findAll(userId) {
        const levels = await this.prisma.levels.findMany({
            orderBy: { sort_order: 'asc' },
            include: {
                modules: {
                    include: {
                        lessons: true,
                    },
                },
            },
        });
        return Promise.all(levels.map(async (level) => {
            let progressPercent = 0;
            if (userId) {
                const totalLessons = level.modules.reduce((acc, mod) => acc + mod.lessons.length, 0);
                if (totalLessons > 0) {
                    const lessonIds = level.modules.flatMap((m) => m.lessons.map((l) => l.id));
                    const completedCount = await this.prisma.user_lesson_progress.count({
                        where: {
                            user_id: userId,
                            lesson_id: { in: lessonIds },
                            status: 'completed',
                        },
                    });
                    progressPercent = Math.round((completedCount / totalLessons) * 100);
                }
            }
            const { modules, ...levelData } = level;
            return {
                ...levelData,
                progressPercent,
            };
        }));
    }
};
exports.LevelsService = LevelsService;
exports.LevelsService = LevelsService = __decorate([
    (0, common_1.Injectable)(),
    __metadata("design:paramtypes", [prisma_service_1.PrismaService])
], LevelsService);
//# sourceMappingURL=levels.service.js.map