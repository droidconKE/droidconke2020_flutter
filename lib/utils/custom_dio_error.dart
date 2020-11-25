import 'package:dio/dio.dart';

class CustomDioError extends DioError {
  Map<String, dynamic> validationErrors;

  CustomDioError({
    RequestOptions request,
    Response response,
    DioErrorType type,
    dynamic error,
    this.validationErrors,
  }) : super(
          request: request,
          response: response,
          type: type,
          error: error,
        );

  static CustomDioError fromDioError(DioError err) {
    return CustomDioError(
        request: err.request,
        response: err.response,
        type: err.type,
        error: err.error);
  }

  @override
  String toString() {
    var msg = '$message';
    if (error is Error) {
      msg += '\n${error.stackTrace}';
    }
    return msg;
  }
}
