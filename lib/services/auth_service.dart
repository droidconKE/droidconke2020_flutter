import 'package:dio/dio.dart';
import 'package:droidconke2020_flutter/config/api.dart';
import 'package:droidconke2020_flutter/utils/http_client.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

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

  static Future<String> getToken() async {
    var _prefs = await SharedPreferences.getInstance();
    return _prefs.getString("AUTH_TOKEN");
  }

  static void setToken(String token) async {
    var _prefs = await SharedPreferences.getInstance();
    _prefs.setString("AUTH_TOKEN", token);
  }

  static void clearToken() async {
    var _prefs = await SharedPreferences.getInstance();
    _prefs.remove("AUTH_TOKEN");
  }
}
