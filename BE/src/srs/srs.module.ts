import { Module } from '@nestjs/common';
import { SrsService } from './srs.service';
import { SrsController } from './srs.controller';

@Module({
  providers: [SrsService],
  controllers: [SrsController],
  exports: [SrsService],
})
export class SrsModule {}
