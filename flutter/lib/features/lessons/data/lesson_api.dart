import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/network/dio_client.dart';
import 'lesson_dto.dart';

part 'lesson_api.g.dart';

class LessonApi {
  final Dio _dio;

  LessonApi(this._dio);

  Future<LevelListResponse> getLevels() async {
    final response = await _dio.get('/levels');
    return LevelListResponse.fromJson(response.data);
  }

  Future<ModuleListResponse> getModulesByLevel(String levelCode) async {
    final response = await _dio.get('/levels/$levelCode/modules');
    return ModuleListResponse.fromJson(response.data);
  }

  Future<LessonListResponse> getLessonsByModule(String moduleId) async {
    final response = await _dio.get('/modules/$moduleId/lessons');
    return LessonListResponse.fromJson(response.data);
  }

  Future<LessonDetailResponse> getLessonDetail(String lessonId) async {
    final response = await _dio.get('/lessons/$lessonId');
    return LessonDetailResponse.fromJson(response.data);
  }

  Future<ExerciseListResponse> getExercisesByLesson(String lessonId) async {
    final response = await _dio.get('/lessons/$lessonId/exercises');
    return ExerciseListResponse.fromJson(response.data);
  }

  Future<SubmitExerciseResponse> submitExercise(
    String exerciseId,
    String userAnswer,
  ) async {
    final response = await _dio.post(
      '/exercises/$exerciseId/submit',
      data: {'user_answer': userAnswer},
    );
    return SubmitExerciseResponse.fromJson(
      response.data as Map<String, dynamic>,
    );
  }
}

@riverpod
LessonApi lessonApi(Ref ref) {
  final dio = ref.watch(dioProvider);
  return LessonApi(dio);
}
