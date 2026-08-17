import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/network/dio_client.dart';
import 'progress_dto.dart';

part 'progress_api.g.dart';

class ProgressApi {
  final Dio _dio;

  ProgressApi(this._dio);

  Future<CompleteLessonResponse> completeLesson(
    String lessonId,
    CompleteLessonRequest request,
  ) async {
    final response = await _dio.post(
      '/lessons/$lessonId/complete',
      data: request.toJson(),
    );
    return CompleteLessonResponse.fromJson(response.data);
  }
}

@riverpod
ProgressApi progressApi(Ref ref) {
  final dio = ref.watch(dioProvider);
  return ProgressApi(dio);
}
