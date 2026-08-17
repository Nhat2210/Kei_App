import { Controller, Get, Post, Param, Body, Request, UseGuards } from '@nestjs/common';
import { ExercisesService } from './exercises.service';
import { ApiTags, ApiOperation, ApiBearerAuth, ApiProperty } from '@nestjs/swagger';
import { JwtAuthGuard } from '../auth/guards/jwt-auth.guard';
import { IsString, IsNotEmpty } from 'class-validator';

export class SubmitExerciseDto {
  @ApiProperty()
  @IsString()
  @IsNotEmpty()
  user_answer: string;
}

@ApiTags('Exercises')
@ApiBearerAuth()
@UseGuards(JwtAuthGuard)
@Controller()
export class ExercisesController {
  constructor(private readonly exercisesService: ExercisesService) {}

  @ApiOperation({ summary: 'Get exercises for a lesson (answers hidden)' })
  @Get('lessons/:id/exercises')
  getExercises(@Param('id') lessonId: string) {
    return this.exercisesService.getExercisesByLessonId(lessonId);
  }

  @ApiOperation({ summary: 'Submit an answer to an exercise' })
  @Post('exercises/:id/submit')
  submitExercise(
    @Param('id') exerciseId: string,
    @Body() dto: SubmitExerciseDto,
    @Request() req,
  ) {
    return this.exercisesService.submitExercise(req.user.userId, exerciseId, dto.user_answer);
  }
}
