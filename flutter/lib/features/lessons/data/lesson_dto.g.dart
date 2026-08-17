// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lesson_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LevelDto _$LevelDtoFromJson(Map<String, dynamic> json) => _LevelDto(
  id: json['id'] as String,
  code: json['code'] as String,
  name: json['name'] as String,
  isActive: json['is_active'] as bool? ?? true,
  sortOrder: (json['sort_order'] as num).toInt(),
);

Map<String, dynamic> _$LevelDtoToJson(_LevelDto instance) => <String, dynamic>{
  'id': instance.id,
  'code': instance.code,
  'name': instance.name,
  'is_active': instance.isActive,
  'sort_order': instance.sortOrder,
};

_LessonDto _$LessonDtoFromJson(Map<String, dynamic> json) => _LessonDto(
  id: json['id'] as String,
  moduleId: json['module_id'] as String,
  name: json['name'] as String,
  xpReward: (json['xp_reward'] as num).toInt(),
  sortOrder: (json['sort_order'] as num).toInt(),
);

Map<String, dynamic> _$LessonDtoToJson(_LessonDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'module_id': instance.moduleId,
      'name': instance.name,
      'xp_reward': instance.xpReward,
      'sort_order': instance.sortOrder,
    };

_ModuleDto _$ModuleDtoFromJson(Map<String, dynamic> json) => _ModuleDto(
  id: json['id'] as String,
  levelId: json['level_id'] as String,
  name: json['name'] as String,
  sortOrder: (json['sort_order'] as num).toInt(),
  isLocked: json['isLocked'] as bool? ?? false,
  progressPercent: (json['progressPercent'] as num?)?.toInt() ?? 0,
  lessons:
      (json['lessons'] as List<dynamic>?)
          ?.map((e) => LessonDto.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$ModuleDtoToJson(_ModuleDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'level_id': instance.levelId,
      'name': instance.name,
      'sort_order': instance.sortOrder,
      'isLocked': instance.isLocked,
      'progressPercent': instance.progressPercent,
      'lessons': instance.lessons,
    };

_VocabularyDto _$VocabularyDtoFromJson(Map<String, dynamic> json) =>
    _VocabularyDto(
      id: json['id'] as String,
      word: json['word'] as String,
      meaning: json['meaning'] as String,
      reading: json['reading'] as String,
    );

Map<String, dynamic> _$VocabularyDtoToJson(_VocabularyDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'word': instance.word,
      'meaning': instance.meaning,
      'reading': instance.reading,
    };

_KanjiDto _$KanjiDtoFromJson(Map<String, dynamic> json) => _KanjiDto(
  id: json['id'] as String,
  character: json['character'] as String,
  meaning: json['meaning'] as String,
  onyomi: json['onyomi'] as String?,
  kunyomi: json['kunyomi'] as String?,
);

Map<String, dynamic> _$KanjiDtoToJson(_KanjiDto instance) => <String, dynamic>{
  'id': instance.id,
  'character': instance.character,
  'meaning': instance.meaning,
  'onyomi': instance.onyomi,
  'kunyomi': instance.kunyomi,
};

_GrammarDto _$GrammarDtoFromJson(Map<String, dynamic> json) => _GrammarDto(
  id: json['id'] as String,
  pattern: json['pattern'] as String,
  meaning: json['meaning'] as String,
  usage: json['usage'] as String?,
);

Map<String, dynamic> _$GrammarDtoToJson(_GrammarDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'pattern': instance.pattern,
      'meaning': instance.meaning,
      'usage': instance.usage,
    };

_ExerciseDto _$ExerciseDtoFromJson(Map<String, dynamic> json) => _ExerciseDto(
  id: json['id'] as String,
  lessonId: json['lesson_id'] as String,
  question: json['question'] as String,
);

Map<String, dynamic> _$ExerciseDtoToJson(_ExerciseDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'lesson_id': instance.lessonId,
      'question': instance.question,
    };

_LessonDetailDto _$LessonDetailDtoFromJson(Map<String, dynamic> json) =>
    _LessonDetailDto(
      id: json['id'] as String,
      moduleId: json['module_id'] as String,
      name: json['name'] as String,
      xpReward: (json['xp_reward'] as num).toInt(),
      sortOrder: (json['sort_order'] as num).toInt(),
      vocabulary:
          (json['vocabulary'] as List<dynamic>?)
              ?.map((e) => VocabularyDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      kanji:
          (json['kanji'] as List<dynamic>?)
              ?.map((e) => KanjiDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      grammar:
          (json['grammar'] as List<dynamic>?)
              ?.map((e) => GrammarDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$LessonDetailDtoToJson(_LessonDetailDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'module_id': instance.moduleId,
      'name': instance.name,
      'xp_reward': instance.xpReward,
      'sort_order': instance.sortOrder,
      'vocabulary': instance.vocabulary,
      'kanji': instance.kanji,
      'grammar': instance.grammar,
    };

_LevelListResponse _$LevelListResponseFromJson(Map<String, dynamic> json) =>
    _LevelListResponse(
      success: json['success'] as bool,
      data: (json['data'] as List<dynamic>)
          .map((e) => LevelDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$LevelListResponseToJson(_LevelListResponse instance) =>
    <String, dynamic>{'success': instance.success, 'data': instance.data};

_ModuleListResponse _$ModuleListResponseFromJson(Map<String, dynamic> json) =>
    _ModuleListResponse(
      success: json['success'] as bool,
      data: (json['data'] as List<dynamic>)
          .map((e) => ModuleDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ModuleListResponseToJson(_ModuleListResponse instance) =>
    <String, dynamic>{'success': instance.success, 'data': instance.data};

_LessonListResponse _$LessonListResponseFromJson(Map<String, dynamic> json) =>
    _LessonListResponse(
      success: json['success'] as bool,
      data: (json['data'] as List<dynamic>)
          .map((e) => LessonDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$LessonListResponseToJson(_LessonListResponse instance) =>
    <String, dynamic>{'success': instance.success, 'data': instance.data};

_LessonDetailResponse _$LessonDetailResponseFromJson(
  Map<String, dynamic> json,
) => _LessonDetailResponse(
  success: json['success'] as bool,
  data: LessonDetailDto.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$LessonDetailResponseToJson(
  _LessonDetailResponse instance,
) => <String, dynamic>{'success': instance.success, 'data': instance.data};

_ExerciseListResponse _$ExerciseListResponseFromJson(
  Map<String, dynamic> json,
) => _ExerciseListResponse(
  success: json['success'] as bool,
  data: (json['data'] as List<dynamic>)
      .map((e) => ExerciseDto.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$ExerciseListResponseToJson(
  _ExerciseListResponse instance,
) => <String, dynamic>{'success': instance.success, 'data': instance.data};
