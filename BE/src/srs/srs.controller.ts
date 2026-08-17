import { Controller, Get, Post, Param, Body, Request, UseGuards } from '@nestjs/common';
import { SrsService } from './srs.service';
import { ApiTags, ApiOperation, ApiBearerAuth } from '@nestjs/swagger';
import { JwtAuthGuard } from '../auth/guards/jwt-auth.guard';
import { SrsRating } from './utils/sm2.util';

export class ReviewDto {
  rating: SrsRating;
}

@ApiTags('SRS')
@ApiBearerAuth()
@UseGuards(JwtAuthGuard)
@Controller('srs')
export class SrsController {
  constructor(private readonly srsService: SrsService) {}

  @ApiOperation({ summary: 'Get due vocabulary and kanji for review' })
  @Get('due')
  getDueItems(@Request() req) {
    return this.srsService.getDueItems(req.user.userId);
  }

  @ApiOperation({ summary: 'Review a vocabulary' })
  @Post('vocabulary/:id/review')
  reviewVocabulary(@Param('id') vocabId: string, @Body() body: ReviewDto, @Request() req) {
    return this.srsService.reviewVocabulary(req.user.userId, vocabId, body.rating);
  }

  @ApiOperation({ summary: 'Review a kanji' })
  @Post('kanji/:id/review')
  reviewKanji(@Param('id') kanjiId: string, @Body() body: ReviewDto, @Request() req) {
    return this.srsService.reviewKanji(req.user.userId, kanjiId, body.rating);
  }
}
