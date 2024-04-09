import 'package:dio/dio.dart';

extension ResponseCheck on Response {
  bool isSuccessful() {
    final int checkedStatusCode;
    if (statusCode != null) {
      checkedStatusCode = statusCode!;
    } else {
      checkedStatusCode = 0;
    }
    return checkedStatusCode >= 200 && checkedStatusCode <= 300;
  }
}
