import 'package:freezed_annotation/freezed_annotation.dart';

part 'progress_dto.freezed.dart';
part 'progress_dto.g.dart';

@freezed
abstract class ExerciseResultDto with _$ExerciseResultDto {
  const factory ExerciseResultDto({
    @JsonKey(name: 'exercise_id') required String exerciseId,
    @JsonKey(name: 'user_answer') required String userAnswer,
    @JsonKey(name: 'is_correct') required bool isCorrect,
  }) = _ExerciseResultDto;

  factory ExerciseResultDto.fromJson(Map<String, dynamic> json) =>
      _$ExerciseResultDtoFromJson(json);
}

@freezed
abstract class CompleteLessonRequest with _$CompleteLessonRequest {
  const factory CompleteLessonRequest({
    required int score,
    @JsonKey(name: 'exercise_results')
    required List<ExerciseResultDto> exerciseResults,
  }) = _CompleteLessonRequest;

  factory CompleteLessonRequest.fromJson(Map<String, dynamic> json) =>
      _$CompleteLessonRequestFromJson(json);
}

@freezed
abstract class CompleteLessonResponseData with _$CompleteLessonResponseData {
  const factory CompleteLessonResponseData({
    @JsonKey(name: 'xp_received') required int xpReceived,
    @JsonKey(name: 'total_xp') required int totalXp,
    @JsonKey(name: 'streak_days') required int streakDays,
    @JsonKey(name: 'is_next_module_unlocked')
    required bool isNextModuleUnlocked,
  }) = _CompleteLessonResponseData;

  factory CompleteLessonResponseData.fromJson(Map<String, dynamic> json) =>
      _$CompleteLessonResponseDataFromJson(json);
}

@freezed
abstract class CompleteLessonResponse with _$CompleteLessonResponse {
  const factory CompleteLessonResponse({
    required bool success,
    required CompleteLessonResponseData data,
  }) = _CompleteLessonResponse;

  factory CompleteLessonResponse.fromJson(Map<String, dynamic> json) =>
      _$CompleteLessonResponseFromJson(json);
}
