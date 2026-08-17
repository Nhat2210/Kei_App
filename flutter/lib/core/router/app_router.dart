import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../features/auth/application/auth_provider.dart';
import '../../features/auth/presentation/login_screen.dart';
import '../../features/auth/presentation/register_screen.dart';
import '../../features/home/presentation/home_screen.dart';
import '../../features/lessons/presentation/lesson_screen.dart';
import '../../features/lessons/presentation/quiz_screen.dart';
import '../../features/main/presentation/main_screen.dart';
import '../../features/profile/presentation/profile_screen.dart';

part 'app_router.g.dart';

@riverpod
GoRouter appRouter(Ref ref) {
  final router = GoRouter(
    initialLocation: '/home',
    redirect: (context, state) {
      // Read current auth state without watching
      final authState = ref.read(authProvider);

      if (authState.isLoading) return null;

      final isAuth = authState.hasValue && authState.value != null;
      final isGoingToLogin = state.uri.path == '/login';
      final isGoingToRegister = state.uri.path == '/register';

      if (!isAuth && !isGoingToLogin && !isGoingToRegister) {
        return '/login';
      }

      if (isAuth && (isGoingToLogin || isGoingToRegister)) {
        return '/home';
      }

      return null;
    },
    routes: [
      GoRoute(path: '/login', builder: (context, state) => const LoginScreen()),
      GoRoute(
        path: '/register',
        builder: (context, state) => const RegisterScreen(),
      ),
      GoRoute(path: '/home', builder: (context, state) => const MainScreen()),
      GoRoute(
        path: '/lessons/:id',
        builder: (context, state) {
          final id = state.pathParameters['id']!;
          return LessonScreen(lessonId: id);
        },
      ),
      GoRoute(
        path: '/lessons/:id/quiz',
        builder: (context, state) {
          final id = state.pathParameters['id']!;
          return QuizScreen(lessonId: id);
        },
      ),
      GoRoute(
        path: '/profile',
        builder: (context, state) => const ProfileScreen(),
      ),
    ],
  );

  ref.listen(authProvider, (previous, next) {
    final wasAuth = previous?.value != null;
    final isAuth = next.value != null;

    // Only refresh if authentication status changed (login/logout)
    if (wasAuth != isAuth) {
      router.refresh();
    }
  });

  return router;
}
