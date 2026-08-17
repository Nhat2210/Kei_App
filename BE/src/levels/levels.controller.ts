import { Controller, Get, Request, UseGuards } from '@nestjs/common';
import { LevelsService } from './levels.service';
import { ApiTags, ApiOperation, ApiBearerAuth } from '@nestjs/swagger';
import { OptionalJwtAuthGuard } from '../auth/guards/optional-jwt-auth.guard';

@ApiTags('Levels')
@Controller('levels')
export class LevelsController {
  constructor(private readonly levelsService: LevelsService) {}

  @ApiBearerAuth()
  @UseGuards(OptionalJwtAuthGuard)
  @ApiOperation({ summary: 'Get all levels with optional user progress' })
  @Get()
  findAll(@Request() req) {
    return this.levelsService.findAll(req.user?.userId);
  }
}
