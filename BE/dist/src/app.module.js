"use strict";
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.AppModule = void 0;
const common_1 = require("@nestjs/common");
const app_controller_1 = require("./app.controller");
const app_service_1 = require("./app.service");
const prisma_module_1 = require("./prisma/prisma.module");
const auth_module_1 = require("./auth/auth.module");
const users_module_1 = require("./users/users.module");
const levels_module_1 = require("./levels/levels.module");
const modules_module_1 = require("./modules/modules.module");
const lessons_module_1 = require("./lessons/lessons.module");
const vocabulary_module_1 = require("./vocabulary/vocabulary.module");
const kanji_module_1 = require("./kanji/kanji.module");
const grammar_module_1 = require("./grammar/grammar.module");
const gamification_module_1 = require("./gamification/gamification.module");
const progress_module_1 = require("./progress/progress.module");
const srs_module_1 = require("./srs/srs.module");
const exercises_module_1 = require("./exercises/exercises.module");
const achievements_module_1 = require("./achievements/achievements.module");
const mock_tests_module_1 = require("./mock-tests/mock-tests.module");
const throttler_1 = require("@nestjs/throttler");
const logger_middleware_1 = require("./common/logger.middleware");
let AppModule = class AppModule {
    configure(consumer) {
        consumer.apply(logger_middleware_1.LoggerMiddleware).forRoutes('*');
    }
};
exports.AppModule = AppModule;
exports.AppModule = AppModule = __decorate([
    (0, common_1.Module)({
        imports: [
            throttler_1.ThrottlerModule.forRoot([{
                    ttl: 60000,
                    limit: 100,
                }]),
            prisma_module_1.PrismaModule,
            auth_module_1.AuthModule,
            users_module_1.UsersModule,
            levels_module_1.LevelsModule,
            modules_module_1.ModulesModule,
            lessons_module_1.LessonsModule,
            vocabulary_module_1.VocabularyModule,
            kanji_module_1.KanjiModule,
            grammar_module_1.GrammarModule,
            gamification_module_1.GamificationModule,
            progress_module_1.ProgressModule,
            srs_module_1.SrsModule,
            exercises_module_1.ExercisesModule,
            achievements_module_1.AchievementsModule,
            mock_tests_module_1.MockTestsModule,
        ],
        controllers: [app_controller_1.AppController],
        providers: [
            app_service_1.AppService,
            {
                provide: 'APP_GUARD',
                useClass: throttler_1.ThrottlerGuard,
            },
        ],
    })
], AppModule);
//# sourceMappingURL=app.module.js.map