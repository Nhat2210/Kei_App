// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'progress_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ExerciseResultDto _$ExerciseResultDtoFromJson(Map<String, dynamic> json) =>
    _ExerciseResultDto(
      exerciseId: json['exercise_id'] as String,
      userAnswer: json['user_answer'] as String,
      isCorrect: json['is_correct'] as bool,
    );

Map<String, dynamic> _$ExerciseResultDtoToJson(_ExerciseResultDto instance) =>
    <String, dynamic>{
      'exercise_id': instance.exerciseId,
      'user_answer': instance.userAnswer,
      'is_correct': instance.isCorrect,
    };

_CompleteLessonRequest _$CompleteLessonRequestFromJson(
  Map<String, dynamic> json,
) => _CompleteLessonRequest(
  score: (json['score'] as num).toInt(),
  exerciseResults: (json['exercise_results'] as List<dynamic>)
      .map((e) => ExerciseResultDto.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$CompleteLessonRequestToJson(
  _CompleteLessonRequest instance,
) => <String, dynamic>{
  'score': instance.score,
  'exercise_results': instance.exerciseResults,
};

_CompleteLessonResponseData _$CompleteLessonResponseDataFromJson(
  Map<String, dynamic> json,
) => _CompleteLessonResponseData(
  xpReceived: (json['xp_received'] as num).toInt(),
  totalXp: (json['total_xp'] as num).toInt(),
  streakDays: (json['streak_days'] as num).toInt(),
  isNextModuleUnlocked: json['is_next_module_unlocked'] as bool,
);

Map<String, dynamic> _$CompleteLessonResponseDataToJson(
  _CompleteLessonResponseData instance,
) => <String, dynamic>{
  'xp_received': instance.xpReceived,
  'total_xp': instance.totalXp,
  'streak_days': instance.streakDays,
  'is_next_module_unlocked': instance.isNextModuleUnlocked,
};

_CompleteLessonResponse _$CompleteLessonResponseFromJson(
  Map<String, dynamic> json,
) => _CompleteLessonResponse(
  success: json['success'] as bool,
  data: CompleteLessonResponseData.fromJson(
    json['data'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$CompleteLessonResponseToJson(
  _CompleteLessonResponse instance,
) => <String, dynamic>{'success': instance.success, 'data': instance.data};
