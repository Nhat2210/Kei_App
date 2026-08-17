import 'package:drift/drift.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/database/app_database.dart';
import 'lesson_dto.dart';

part 'local_lesson_dao.g.dart';

@DriftAccessor(
  tables: [LocalLessons, LocalVocabularies, LocalKanjis, LocalGrammars],
)
class LocalLessonDao extends DatabaseAccessor<AppDatabase>
    with _$LocalLessonDaoMixin {
  LocalLessonDao(super.db);

  Future<void> insertLessonDetail(LessonDetailDto dto) async {
    return transaction(() async {
      // 1. Insert/Replace Lesson
      await into(localLessons).insert(
        LocalLesson(
          id: dto.id,
          moduleId: dto.moduleId,
          name: dto.name,
          xpReward: dto.xpReward,
          sortOrder: dto.sortOrder,
        ),
        mode: InsertMode.insertOrReplace,
      );

      // 2. Xóa dữ liệu cũ (nếu có)
      await (delete(
        localVocabularies,
      )..where((t) => t.lessonId.equals(dto.id))).go();
      await (delete(localKanjis)..where((t) => t.lessonId.equals(dto.id))).go();
      await (delete(
        localGrammars,
      )..where((t) => t.lessonId.equals(dto.id))).go();

      // 3. Insert Vocabularies
      if (dto.vocabulary.isNotEmpty) {
        await localVocabularies.insertAll(
          dto.vocabulary
              .map(
                (v) => LocalVocabulary(
                  id: v.id,
                  lessonId: dto.id,
                  word: v.word,
                  meaning: v.meaning,
                  reading: v.reading,
                ),
              )
              .toList(),
        );
      }

      // 4. Insert Kanjis
      if (dto.kanji.isNotEmpty) {
        await localKanjis.insertAll(
          dto.kanji
              .map(
                (k) => LocalKanji(
                  id: k.id,
                  lessonId: dto.id,
                  character: k.character,
                  meaning: k.meaning,
                  onyomi: k.onyomi,
                  kunyomi: k.kunyomi,
                ),
              )
              .toList(),
        );
      }

      // 5. Insert Grammars
      if (dto.grammar.isNotEmpty) {
        await localGrammars.insertAll(
          dto.grammar
              .map(
                (g) => LocalGrammar(
                  id: g.id,
                  lessonId: dto.id,
                  pattern: g.pattern,
                  meaning: g.meaning,
                  usage: g.usage,
                ),
              )
              .toList(),
        );
      }
    });
  }

  Future<LessonDetailDto?> getLessonDetail(String lessonId) async {
    // 1. Lấy thông tin Lesson
    final lessonQuery = select(localLessons)
      ..where((t) => t.id.equals(lessonId));
    final lessonResult = await lessonQuery.getSingleOrNull();

    if (lessonResult == null) return null;

    // 2. Lấy Vocabularies
    final vocabQuery = select(localVocabularies)
      ..where((t) => t.lessonId.equals(lessonId));
    final vocabResult = await vocabQuery.get();

    // 3. Lấy Kanjis
    final kanjiQuery = select(localKanjis)
      ..where((t) => t.lessonId.equals(lessonId));
    final kanjiResult = await kanjiQuery.get();

    // 4. Lấy Grammars
    final grammarQuery = select(localGrammars)
      ..where((t) => t.lessonId.equals(lessonId));
    final grammarResult = await grammarQuery.get();

    // 5. Map sang DTO
    return LessonDetailDto(
      id: lessonResult.id,
      moduleId: lessonResult.moduleId,
      name: lessonResult.name,
      xpReward: lessonResult.xpReward,
      sortOrder: lessonResult.sortOrder,
      vocabulary: vocabResult
          .map(
            (v) => VocabularyDto(
              id: v.id,
              word: v.word,
              meaning: v.meaning,
              reading: v.reading,
            ),
          )
          .toList(),
      kanji: kanjiResult
          .map(
            (k) => KanjiDto(
              id: k.id,
              character: k.character,
              meaning: k.meaning,
              onyomi: k.onyomi,
              kunyomi: k.kunyomi,
            ),
          )
          .toList(),
      grammar: grammarResult
          .map(
            (g) => GrammarDto(
              id: g.id,
              pattern: g.pattern,
              meaning: g.meaning,
              usage: g.usage,
            ),
          )
          .toList(),
    );
  }
}

@riverpod
LocalLessonDao localLessonDao(Ref ref) {
  final db = ref.watch(appDatabaseProvider);
  return LocalLessonDao(db);
}
