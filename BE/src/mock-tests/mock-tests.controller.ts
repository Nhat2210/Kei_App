import { Controller, Get, Param, UseGuards } from '@nestjs/common';
import { MockTestsService } from './mock-tests.service';
import { ApiTags, ApiOperation, ApiBearerAuth, ApiParam } from '@nestjs/swagger';
import { OptionalJwtAuthGuard } from '../auth/guards/optional-jwt-auth.guard';

@ApiTags('Mock Tests')
@Controller('levels')
export class MockTestsController {
  constructor(private readonly mockTestsService: MockTestsService) {}

  @ApiBearerAuth()
  @UseGuards(OptionalJwtAuthGuard)
  @ApiOperation({ summary: 'Get mock tests for a specific level' })
  @ApiParam({ name: 'code', example: 'N5' })
  @Get(':code/mock-tests')
  getMockTests(@Param('code') code: string) {
    return this.mockTestsService.getMockTestsByLevelCode(code);
  }
}
