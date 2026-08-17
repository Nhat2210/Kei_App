import 'package:freezed_annotation/freezed_annotation.dart';

part 'lesson_dto.freezed.dart';
part 'lesson_dto.g.dart';

@freezed
abstract class LevelDto with _$LevelDto {
  const factory LevelDto({
    required String id,
    required String code,
    required String name,
    @JsonKey(name: 'is_active') @Default(true) bool isActive,
    @JsonKey(name: 'sort_order') required int sortOrder,
  }) = _LevelDto;

  factory LevelDto.fromJson(Map<String, dynamic> json) =>
      _$LevelDtoFromJson(json);
}

@freezed
abstract class LessonDto with _$LessonDto {
  const factory LessonDto({
    required String id,
    @JsonKey(name: 'module_id') required String moduleId,
    required String name,
    @JsonKey(name: 'xp_reward') required int xpReward,
    @JsonKey(name: 'sort_order') required int sortOrder,
  }) = _LessonDto;

  factory LessonDto.fromJson(Map<String, dynamic> json) =>
      _$LessonDtoFromJson(json);
}

@freezed
abstract class ModuleDto with _$ModuleDto {
  const factory ModuleDto({
    required String id,
    @JsonKey(name: 'level_id') required String levelId,
    required String name,
    @JsonKey(name: 'sort_order') required int sortOrder,
    @Default(false) bool isLocked,
    @Default(0) int progressPercent,
    @Default([]) List<LessonDto> lessons,
  }) = _ModuleDto;

  factory ModuleDto.fromJson(Map<String, dynamic> json) =>
      _$ModuleDtoFromJson(json);
}

@freezed
abstract class VocabularyDto with _$VocabularyDto {
  const factory VocabularyDto({
    required String id,
    required String word,
    required String meaning,
    required String reading,
  }) = _VocabularyDto;

  factory VocabularyDto.fromJson(Map<String, dynamic> json) =>
      _$VocabularyDtoFromJson(json);
}

@freezed
abstract class KanjiDto with _$KanjiDto {
  const factory KanjiDto({
    required String id,
    required String character,
    required String meaning,
    String? onyomi,
    String? kunyomi,
  }) = _KanjiDto;

  factory KanjiDto.fromJson(Map<String, dynamic> json) =>
      _$KanjiDtoFromJson(json);
}

@freezed
abstract class GrammarDto with _$GrammarDto {
  const factory GrammarDto({
    required String id,
    required String pattern,
    required String meaning,
    String? usage,
  }) = _GrammarDto;

  factory GrammarDto.fromJson(Map<String, dynamic> json) =>
      _$GrammarDtoFromJson(json);
}

@freezed
abstract class ExerciseDto with _$ExerciseDto {
  const factory ExerciseDto({
    required String id,
    @JsonKey(name: 'lesson_id') required String lessonId,
    required String question,
  }) = _ExerciseDto;

  factory ExerciseDto.fromJson(Map<String, dynamic> json) =>
      _$ExerciseDtoFromJson(json);
}

@freezed
abstract class SubmitExerciseResponse with _$SubmitExerciseResponse {
  const factory SubmitExerciseResponse({
    @JsonKey(name: 'is_correct') required bool isCorrect,
    @JsonKey(name: 'correct_answer') required String correctAnswer,
    String? explanation,
  }) = _SubmitExerciseResponse;

  factory SubmitExerciseResponse.fromJson(Map<String, dynamic> json) {
    // Handle both cases: wrapped in 'data' or direct response
    final data =
        json.containsKey('data') && json['data'] is Map<String, dynamic>
        ? json['data'] as Map<String, dynamic>
        : json;

    return SubmitExerciseResponse(
      isCorrect: data['is_correct'] as bool? ?? false,
      correctAnswer: data['correct_answer'] as String? ?? '',
      explanation: data['explanation'] as String?,
    );
  }
}

@freezed
abstract class LessonDetailDto with _$LessonDetailDto {
  const factory LessonDetailDto({
    required String id,
    @JsonKey(name: 'module_id') required String moduleId,
    required String name,
    @JsonKey(name: 'xp_reward') required int xpReward,
    @JsonKey(name: 'sort_order') required int sortOrder,
    @Default([]) List<VocabularyDto> vocabulary,
    @Default([]) List<KanjiDto> kanji,
    @Default([]) List<GrammarDto> grammar,
  }) = _LessonDetailDto;

  factory LessonDetailDto.fromJson(Map<String, dynamic> json) =>
      _$LessonDetailDtoFromJson(json);
}

// Wrapper cho response list
@freezed
abstract class LevelListResponse with _$LevelListResponse {
  const factory LevelListResponse({
    required bool success,
    required List<LevelDto> data,
  }) = _LevelListResponse;

  factory LevelListResponse.fromJson(Map<String, dynamic> json) =>
      _$LevelListResponseFromJson(json);
}

@freezed
abstract class ModuleListResponse with _$ModuleListResponse {
  const factory ModuleListResponse({
    required bool success,
    required List<ModuleDto> data,
  }) = _ModuleListResponse;

  factory ModuleListResponse.fromJson(Map<String, dynamic> json) =>
      _$ModuleListResponseFromJson(json);
}

@freezed
abstract class LessonListResponse with _$LessonListResponse {
  const factory LessonListResponse({
    required bool success,
    required List<LessonDto> data,
  }) = _LessonListResponse;

  factory LessonListResponse.fromJson(Map<String, dynamic> json) =>
      _$LessonListResponseFromJson(json);
}

@freezed
abstract class LessonDetailResponse with _$LessonDetailResponse {
  const factory LessonDetailResponse({
    required bool success,
    required LessonDetailDto data,
  }) = _LessonDetailResponse;

  factory LessonDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$LessonDetailResponseFromJson(json);
}

@freezed
abstract class ExerciseListResponse with _$ExerciseListResponse {
  const factory ExerciseListResponse({
    required bool success,
    required List<ExerciseDto> data,
  }) = _ExerciseListResponse;

  factory ExerciseListResponse.fromJson(Map<String, dynamic> json) =>
      _$ExerciseListResponseFromJson(json);
}
