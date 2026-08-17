import { Module, NestModule, MiddlewareConsumer } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { PrismaModule } from './prisma/prisma.module';
import { AuthModule } from './auth/auth.module';
import { UsersModule } from './users/users.module';
import { LevelsModule } from './levels/levels.module';
import { ModulesModule } from './modules/modules.module';
import { LessonsModule } from './lessons/lessons.module';
import { VocabularyModule } from './vocabulary/vocabulary.module';
import { KanjiModule } from './kanji/kanji.module';
import { GrammarModule } from './grammar/grammar.module';
import { GamificationModule } from './gamification/gamification.module';
import { ProgressModule } from './progress/progress.module';
import { SrsModule } from './srs/srs.module';
import { ExercisesModule } from './exercises/exercises.module';
import { AchievementsModule } from './achievements/achievements.module';
import { MockTestsModule } from './mock-tests/mock-tests.module';
import { ThrottlerModule, ThrottlerGuard } from '@nestjs/throttler';

import { LoggerMiddleware } from './common/logger.middleware';

@Module({
  imports: [
    ThrottlerModule.forRoot([{
      ttl: 60000,
      limit: 100,
    }]),
    PrismaModule,
    AuthModule,
    UsersModule,
    LevelsModule,
    ModulesModule,
    LessonsModule,
    VocabularyModule,
    KanjiModule,
    GrammarModule,
    GamificationModule,
    ProgressModule,
    SrsModule,
    ExercisesModule,
    AchievementsModule,
    MockTestsModule,
  ],
  controllers: [AppController],
  providers: [
    AppService,
    {
      provide: 'APP_GUARD',
      useClass: ThrottlerGuard,
    },
  ],
})
export class AppModule implements NestModule {
  configure(consumer: MiddlewareConsumer) {
    consumer.apply(LoggerMiddleware).forRoutes('*');
  }
}
