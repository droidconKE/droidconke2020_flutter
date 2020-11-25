import 'package:droidconke2020_flutter/config/api.dart';
import 'package:droidconke2020_flutter/utils/rest_client.dart';
import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';

class AuthService {
  static Future<Map<String, dynamic>> socialLogin({
    @required String accessToken,
    String provider = 'google',
  }) async {
    final url = '${ApiConfig.serverUrl}social_login/$provider';
    final response = await GetIt.I<RestClient>().dio.post(
      url,
      data: {'access_token': accessToken},
    );
    return response.data;
  }
}
