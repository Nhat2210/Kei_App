import { Controller, Get, Param } from '@nestjs/common';
import { LessonsService } from './lessons.service';
import { ApiTags, ApiOperation, ApiParam } from '@nestjs/swagger';

@ApiTags('Lessons')
@Controller()
export class LessonsController {
  constructor(private readonly lessonsService: LessonsService) {}

  @ApiOperation({ summary: 'Get lessons by module ID' })
  @ApiParam({ name: 'moduleId' })
  @Get('modules/:moduleId/lessons')
  findByModuleId(@Param('moduleId') moduleId: string) {
    return this.lessonsService.findByModuleId(moduleId);
  }

  @ApiOperation({ summary: 'Get lesson details including vocabulary, kanji, and grammar' })
  @ApiParam({ name: 'id' })
  @Get('lessons/:id')
  findOne(@Param('id') id: string) {
    return this.lessonsService.findOne(id);
  }
}
