import 'dart:io';

import 'package:dio/dio.dart';
import 'package:droidconke2020_flutter/services/auth_service.dart';

class AuthInterceptor extends Interceptor {
  @override
  onRequest(RequestOptions options) async {
    if (!options.path.contains("/social_login")) {
      var token = AuthService.getToken();
      options.headers[HttpHeaders.authorizationHeader] =
          "Bearer ${token ?? ''}";
    }
    options.headers['Api-Authorization-Key'] = 'droidconKe-2020';
    options.headers.addAll({'Api-Authorization-Key': 'droidconKe-2020'});
    print(options.headers);
    return options;
  }
}
