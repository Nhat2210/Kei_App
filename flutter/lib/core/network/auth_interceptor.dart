import 'package:dio/dio.dart';

import '../storage/secure_storage.dart';

class AuthInterceptor extends Interceptor {
  final Dio dio;

  AuthInterceptor(this.dio);

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final accessToken = await SecureStorage.getAccessToken();
    if (accessToken != null) {
      options.headers['Authorization'] = 'Bearer $accessToken';
    }
    return super.onRequest(options, handler);
  }

  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    if (err.response?.statusCode == 401) {
      // Logic for refreshing token will go here.
      // If refresh fails, we will need to logout.
      // We will implement full refresh token flow later when integrating with auth provider.
      final refreshToken = await SecureStorage.getRefreshToken();
      if (refreshToken != null) {
        try {
          // Clone request to avoid interceptors
          final refreshDio = Dio(
            BaseOptions(baseUrl: err.requestOptions.baseUrl),
          );
          final response = await refreshDio.post(
            '/auth/refresh',
            data: {'refresh_token': refreshToken},
          );

          if (response.statusCode == 201 || response.statusCode == 200) {
            final newAccessToken = response.data['data']['access_token'];
            final newRefreshToken = response.data['data']['refresh_token'];

            await SecureStorage.saveTokens(
              accessToken: newAccessToken,
              refreshToken: newRefreshToken,
            );

            // Update original request with new token
            err.requestOptions.headers['Authorization'] =
                'Bearer $newAccessToken';

            // Retry original request
            final retryResponse = await dio.fetch(err.requestOptions);
            return handler.resolve(retryResponse);
          }
        } catch (e) {
          // If refresh fails, clear tokens
          await SecureStorage.clearTokens();
        }
      }
    }
    return super.onError(err, handler);
  }
}
