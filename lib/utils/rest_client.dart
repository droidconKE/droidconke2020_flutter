import 'package:debug_mode/debug_mode.dart';
import 'package:dio/dio.dart';
import 'package:dio_firebase_performance/dio_firebase_performance.dart';
import 'package:dio_http_cache/dio_http_cache.dart';
import 'package:droidconke2020_flutter/blocs/auth/auth_bloc.dart';
import 'package:droidconke2020_flutter/utils/http_interceptors/auth_interceptor.dart';
import 'package:droidconke2020_flutter/utils/http_interceptors/error_interceptor.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class RestClient {
  static final CacheConfig cacheConfig = CacheConfig();

  Dio _dio;

  RestClient(this.authBloc, {BaseOptions options}) {
    _dio = create(options);
  }

  Dio get dio => _dio;

  final AuthBloc authBloc;

  Dio create([BaseOptions options]) {
    var dio = Dio(options);

    dio.interceptors
      ..add(AuthInterceptor())
      ..add(ErrorInterceptor())
      ..add(DioCacheManager(cacheConfig).interceptor)
      ..add(DioFirebasePerformanceInterceptor());

    if (DebugMode.isInDebugMode) {
      dio.interceptors.add(PrettyDioLogger(
        requestHeader: true,
        responseHeader: true,
        responseBody: true,
        requestBody: true,
      ));
    }
    return dio;
  }
}
