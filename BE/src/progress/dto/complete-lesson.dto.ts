import { IsNumber, IsArray, ValidateNested, IsString, IsBoolean } from 'class-validator';
import { Type } from 'class-transformer';
import { ApiProperty } from '@nestjs/swagger';

export class ExerciseResultDto {
  @ApiProperty()
  @IsString()
  exercise_id: string;

  @ApiProperty()
  @IsString()
  user_answer: string;

  @ApiProperty()
  @IsBoolean()
  is_correct: boolean;
}

export class CompleteLessonDto {
  @ApiProperty()
  @IsNumber()
  score: number;

  @ApiProperty({ type: [ExerciseResultDto] })
  @IsArray()
  @ValidateNested({ each: true })
  @Type(() => ExerciseResultDto)
  exercise_results: ExerciseResultDto[];
}
