import 'dart:io';

import 'package:dio/dio.dart';
import 'package:droidconke2020_flutter/blocs/auth/auth_bloc.dart';
import 'package:get_it/get_it.dart';

import '../rest_client.dart';

class AuthInterceptor extends Interceptor {
  @override
  onRequest(RequestOptions options) async {
    if (!options.path.contains("/social_login")) {
      var authBlocState = GetIt.I<RestClient>().authBloc.state;
      if (authBlocState is AuthStateAuthenticated) {
        var token = authBlocState.currentUser.token;
        options.headers[HttpHeaders.authorizationHeader] =
            "Bearer ${token ?? ''}";
      }
    }
    return options;
  }
}
