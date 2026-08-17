import { Controller, Get, Param, Request, UseGuards } from '@nestjs/common';
import { ModulesService } from './modules.service';
import { ApiTags, ApiOperation, ApiBearerAuth, ApiParam } from '@nestjs/swagger';
import { OptionalJwtAuthGuard } from '../auth/guards/optional-jwt-auth.guard';

@ApiTags('Modules')
@Controller('levels') // Grouped under levels logically: /levels/:code/modules
export class ModulesController {
  constructor(private readonly modulesService: ModulesService) {}

  @ApiBearerAuth()
  @UseGuards(OptionalJwtAuthGuard)
  @ApiOperation({ summary: 'Get modules by level code' })
  @ApiParam({ name: 'code', example: 'N5' })
  @Get(':code/modules')
  findByLevelCode(@Param('code') code: string, @Request() req) {
    return this.modulesService.findByLevelCode(code, req.user?.userId);
  }
}
