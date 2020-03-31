import 'package:dio/dio.dart';
import 'package:droidconke2020_flutter/config/api.dart';
import 'package:droidconke2020_flutter/utils/http_client.dart';
import 'package:flutter/foundation.dart';

class AuthService {
  static Future<Map<String, dynamic>> socialLogin({
    @required String accessToken,
    String provider = 'google',
  }) async {
    String url = '${ApiConfig.serverUrl}social_login/$provider';
    Response response = await HttpClient.create().post(
      url,
      data: {'access_token': accessToken},
    );
    return response.data;
  }
}
