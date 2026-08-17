import { Controller, Post, Get, Param, Body, Request, UseGuards } from '@nestjs/common';
import { ProgressService } from './progress.service';
import { CompleteLessonDto } from './dto/complete-lesson.dto';
import { ApiTags, ApiOperation, ApiBearerAuth } from '@nestjs/swagger';
import { JwtAuthGuard } from '../auth/guards/jwt-auth.guard';

@ApiTags('Progress')
@ApiBearerAuth()
@UseGuards(JwtAuthGuard)
@Controller()
export class ProgressController {
  constructor(private progressService: ProgressService) {}

  @ApiOperation({ summary: 'Complete a lesson and calculate progress' })
  @Post('lessons/:id/complete')
  completeLesson(
    @Param('id') lessonId: string,
    @Body() dto: CompleteLessonDto,
    @Request() req,
  ) {
    return this.progressService.completeLesson(req.user.userId, lessonId, dto);
  }

  @ApiOperation({ summary: 'Get general progress summary' })
  @Get('progress/summary')
  getSummary(@Request() req) {
    return this.progressService.getSummary(req.user.userId);
  }
}
