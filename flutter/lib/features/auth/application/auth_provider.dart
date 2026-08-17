import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/storage/secure_storage.dart';
import '../data/auth_api.dart';
import '../data/auth_dto.dart';

part 'auth_provider.g.dart';

@Riverpod(keepAlive: true)
class Auth extends _$Auth {
  @override
  FutureOr<UserDto?> build() async {
    final token = await SecureStorage.getAccessToken();
    if (token != null) {
      try {
        final api = ref.read(authApiProvider);
        return await api.getMe();
      } catch (e) {
        // If getting profile fails (e.g. token expired and refresh failed), clear tokens
        await SecureStorage.clearTokens();
        return null;
      }
    }
    return null;
  }

  Future<void> login(String email, String password) async {
    state = const AsyncLoading();
    try {
      final api = ref.read(authApiProvider);
      final response = await api.login(
        LoginRequest(email: email, password: password),
      );

      await SecureStorage.saveTokens(
        accessToken: response.data.accessToken,
        refreshToken: response.data.refreshToken,
      );

      state = AsyncData(response.data.user);
    } catch (e, st) {
      state = AsyncError(e, st);
      rethrow;
    }
  }

  Future<void> register(
    String email,
    String password, {
    String? displayName,
  }) async {
    state = const AsyncLoading();
    try {
      final api = ref.read(authApiProvider);
      final response = await api.register(
        RegisterRequest(
          email: email,
          password: password,
          displayName: displayName,
        ),
      );

      await SecureStorage.saveTokens(
        accessToken: response.data.accessToken,
        refreshToken: response.data.refreshToken,
      );

      state = AsyncData(response.data.user);
    } catch (e, st) {
      state = AsyncError(e, st);
      rethrow;
    }
  }

  Future<void> logout() async {
    try {
      final api = ref.read(authApiProvider);
      await api.logout();
    } catch (_) {
      // Bỏ qua lỗi gọi api (nếu mất mạng hoặc token hết hạn)
    }
    await SecureStorage.clearTokens();
    state = const AsyncData(null);
  }

  void updateDisplayName(String newName) {
    if (state.value != null) {
      state = AsyncData(state.value!.copyWith(displayName: newName));
    }
  }

  void updateAvatar(String newAvatarUrl) {
    if (state.value != null) {
      state = AsyncData(state.value!.copyWith(avatar: newAvatarUrl));
    }
  }
}
