import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/network/dio_client.dart';
import 'auth_dto.dart';

part 'auth_api.g.dart';

class AuthApi {
  final Dio _dio;

  AuthApi(this._dio);

  Future<AuthResponse> register(RegisterRequest request) async {
    final response = await _dio.post('/auth/register', data: request.toJson());
    return AuthResponse.fromJson(response.data);
  }

  Future<AuthResponse> login(LoginRequest request) async {
    final response = await _dio.post('/auth/login', data: request.toJson());
    return AuthResponse.fromJson(response.data);
  }

  Future<UserDto> getMe() async {
    final response = await _dio.get('/users/me');
    return UserDto.fromJson(response.data['data']);
  }

  Future<void> logout() async {
    await _dio.post('/auth/logout');
  }

  Future<void> changePassword(ChangePasswordRequest request) async {
    await _dio.post('/auth/change-password', data: request.toJson());
  }
}

@riverpod
AuthApi authApi(Ref ref) {
  final dio = ref.watch(dioProvider);
  return AuthApi(dio);
}
