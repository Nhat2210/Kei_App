import { Injectable, NotFoundException } from '@nestjs/common';
import { PrismaService } from '../prisma/prisma.service';

@Injectable()
export class LessonsService {
  constructor(private prisma: PrismaService) {}

  async findByModuleId(moduleId: string) {
    return this.prisma.lessons.findMany({
      where: { module_id: moduleId },
      orderBy: { sort_order: 'asc' },
    });
  }

  async findOne(id: string) {
    const lesson = await this.prisma.lessons.findUnique({
      where: { id },
      include: {
        vocabulary: {
          include: {
            vocabulary: true,
          },
        },
        kanji: {
          include: {
            kanji: true,
          },
        },
        grammar: {
          include: {
            grammar: true,
          },
        },
      },
    });

    if (!lesson) {
      throw new NotFoundException('Lesson not found');
    }

    // Transform nested structures into a flat structure
    const { vocabulary, kanji, grammar, ...lessonData } = lesson;
    
    return {
      ...lessonData,
      vocabulary: vocabulary.map((v) => v.vocabulary),
      kanji: kanji.map((k) => k.kanji),
      grammar: grammar.map((g) => g.grammar),
    };
  }
}
