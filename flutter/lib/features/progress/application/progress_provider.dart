import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../auth/application/auth_provider.dart';
import '../../lessons/application/lesson_provider.dart';
import '../data/progress_api.dart';
import '../data/progress_dto.dart';

part 'progress_provider.g.dart';

@Riverpod(keepAlive: true)
class ProgressNotifier extends _$ProgressNotifier {
  @override
  FutureOr<void> build() {}

  Future<CompleteLessonResponseData?> completeLesson(
    String lessonId,
    CompleteLessonRequest request,
  ) async {
    state = const AsyncValue.loading();
    try {
      final api = ref.read(progressApiProvider);
      final response = await api.completeLesson(lessonId, request);

      // Cập nhật lại Auth để có XP và Streak mới
      // ignore: unused_result
      ref.refresh(authProvider);

      // Cập nhật lại Modules để mở khoá Module tiếp theo (nếu có)
      // ignore: unused_result
      ref.refresh(currentLevelModulesProvider);

      state = const AsyncValue.data(null);
      return response.data;
    } catch (e, stack) {
      state = AsyncValue.error(e, stack);
      return null;
    }
  }
}
