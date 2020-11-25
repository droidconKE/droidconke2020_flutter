import 'package:dio/dio.dart';

import '../custom_dio_error.dart';

class ErrorInterceptor extends Interceptor {
  @override
  Future onError(DioError error) async {
    var err = CustomDioError.fromDioError(error);
    switch (err.type) {
      case DioErrorType.CANCEL:
        err.error = 'Request to API server was cancelled';
        break;
      case DioErrorType.CONNECT_TIMEOUT:
        err.error = 'Connection to API server timed out';
        break;
      case DioErrorType.DEFAULT:
        err.error =
            'Connection to API server failed due to internet connection';
        break;
      case DioErrorType.RECEIVE_TIMEOUT:
        err.error = 'Receive timeout in connection with API server';
        break;
      case DioErrorType.SEND_TIMEOUT:
        err.error = 'Send timeout in connection with API server';
        break;
      case DioErrorType.RESPONSE:
        if (err.response.data != null) {
          if (err.response.data is String) {
            // ignore: prefer_single_quotes
            err.error = "${err.response.statusCode}: ${err.response.data}";
          } else {
            if (err.response.data['errors'] != null) {
              err.validationErrors = err.response.data['errors'];
              err.error = err.response.data['errors']
                  [err.response.data['errors'].keys.first][0];
            } else {
              err.error = err.response.data['message'];
            }
          }
          if (err.response.statusCode == 404 && err.response.data is String) {
            // ignore: prefer_single_quotes
            err.error = "${err.response.statusCode} Page not found.";
          }
          if (err.response.statusCode == 500 && err.response.data is String) {
            // ignore: prefer_single_quotes
            err.error = "${err.response.statusCode} Internal server error.";
          }

          if (err.response.statusCode == 401) {
            err.error = 'Invalid credentials. Try again';
          }
          if (err.response.statusCode == 403) {
            err.error = 'Unauthorized';
          }
        } else {
          err.error =
              'Received invalid status code: ${err.response.statusCode}';
        }
        break;
    }
    return super.onError(err);
  }
}
