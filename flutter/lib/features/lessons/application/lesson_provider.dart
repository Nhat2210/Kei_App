import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../data/lesson_api.dart';
import '../data/lesson_dto.dart';
import '../data/local_lesson_dao.dart';

part 'lesson_provider.g.dart';

// Provider lưu trữ Level code hiện tại (Mặc định là N5)
@riverpod
class CurrentLevel extends _$CurrentLevel {
  @override
  String build() {
    return 'N5';
  }

  void setLevel(String levelCode) {
    state = levelCode;
  }
}

// Lấy danh sách Level
@riverpod
Future<List<LevelDto>> levels(Ref ref) async {
  final api = ref.watch(lessonApiProvider);
  final response = await api.getLevels();
  return response.data;
}

// Lấy danh sách Module dựa trên Level code hiện tại
@riverpod
Future<List<ModuleDto>> currentLevelModules(Ref ref) async {
  final levelCode = ref.watch(currentLevelProvider);
  final api = ref.watch(lessonApiProvider);
  final response = await api.getModulesByLevel(levelCode);
  return response.data;
}

// Lấy danh sách Lesson theo ModuleId
@riverpod
Future<List<LessonDto>> moduleLessons(Ref ref, String moduleId) async {
  final api = ref.watch(lessonApiProvider);
  final response = await api.getLessonsByModule(moduleId);
  return response.data;
}

@riverpod
Future<LessonDetailDto> lessonDetail(Ref ref, String lessonId) async {
  final api = ref.watch(lessonApiProvider);
  final dao = ref.watch(localLessonDaoProvider);

  try {
    // 1. Fetch from network
    final response = await api.getLessonDetail(lessonId);
    final data = response.data;

    // 2. Save to local DB (background)
    dao.insertLessonDetail(data).catchError((e) {
      debugPrint('Error caching lesson: $e');
    });

    return data;
  } catch (e) {
    // 3. Fallback to local DB if network fails
    final cachedData = await dao.getLessonDetail(lessonId);
    if (cachedData != null) {
      return cachedData;
    }
    rethrow; // Ném lỗi nếu không có mạng và cũng không có cache
  }
}

@riverpod
Future<List<ExerciseDto>> lessonExercises(Ref ref, String lessonId) async {
  final api = ref.watch(lessonApiProvider);
  final response = await api.getExercisesByLesson(lessonId);
  return response.data;
}
