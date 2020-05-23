import 'package:debug_mode/debug_mode.dart';
import 'package:dio/dio.dart';
import 'package:dio_firebase_performance/dio_firebase_performance.dart';
import 'package:dio_http_cache/dio_http_cache.dart';
import 'package:droidconke2020_flutter/utils/http_interceptors/auth_interceptor.dart';
import 'package:droidconke2020_flutter/utils/http_interceptors/error_interceptor.dart';

class HttpClient {
  static final CacheConfig cacheConfig = CacheConfig();

  static Dio create([BaseOptions options]) {
    Dio dio = Dio(options);

    dio.interceptors
      ..add(AuthInterceptor())
      ..add(ErrorInterceptor())
      ..add(DioCacheManager(cacheConfig).interceptor)
      ..add(DioFirebasePerformanceInterceptor());

    if (DebugMode.isInDebugMode) {
      dio.interceptors.add(LogInterceptor(
        requestHeader: true,
        responseHeader: true,
        responseBody: true,
        requestBody: true,
      ));
    }
    return dio;
  }
}
