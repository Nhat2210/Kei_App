import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'auth_interceptor.dart';

import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

part 'dio_client.g.dart';

@riverpod
Dio dio(Ref ref) {
  String? baseUrl = dotenv.env['API_URL'];
  if (kIsWeb && baseUrl != null && baseUrl.contains('10.0.2.2')) {
    baseUrl = baseUrl.replaceAll('10.0.2.2', 'localhost');
  } else {
    baseUrl ??= kIsWeb
        ? 'http://localhost:3000/api'
        : 'http://10.0.2.2:3000/api';
  }

  final dio = Dio(
    BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 10),
      contentType: 'application/json',
    ),
  );

  // Add interceptor for attaching tokens and handling refresh
  dio.interceptors.add(AuthInterceptor(dio));

  // Add interceptor for network error logging and transformation
  dio.interceptors.add(
    InterceptorsWrapper(
      onError: (DioException e, handler) {
        if (e.type == DioExceptionType.connectionTimeout ||
            e.type == DioExceptionType.receiveTimeout ||
            e.type == DioExceptionType.sendTimeout) {
          // Log timeout
          // ignore: avoid_print
          print('⏳ [Network] Timeout error: ${e.message}');
        } else if (e.type == DioExceptionType.connectionError) {
          // Log offline
          // ignore: avoid_print
          print('🚫 [Network] No internet connection: ${e.message}');
        }
        handler.next(e);
      },
    ),
  );

  return dio;
}
