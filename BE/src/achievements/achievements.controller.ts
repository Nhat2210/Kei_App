import { Controller, Get, Request, UseGuards } from '@nestjs/common';
import { AchievementsService } from './achievements.service';
import { ApiTags, ApiOperation, ApiBearerAuth } from '@nestjs/swagger';
import { JwtAuthGuard } from '../auth/guards/jwt-auth.guard';

@ApiTags('Achievements')
@ApiBearerAuth()
@UseGuards(JwtAuthGuard)
@Controller('achievements')
export class AchievementsController {
  constructor(private readonly achievementsService: AchievementsService) {}

  @ApiOperation({ summary: 'Get user achievements and progress' })
  @Get('me')
  getMyAchievements(@Request() req) {
    return this.achievementsService.getMyAchievements(req.user.userId);
  }
}
