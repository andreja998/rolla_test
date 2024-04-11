
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:fpdart/src/unit.dart';
import 'package:fpdart/src/either.dart';
import 'package:injectable/injectable.dart';
import 'package:rolla_zadatak/config/extensions/dio_extension.dart';
import 'package:rolla_zadatak/features/log_page/domain/entities/failures/log_failure.dart';
import 'package:rolla_zadatak/features/log_page/domain/entities/log/log.dart';
import 'package:rolla_zadatak/features/log_page/domain/entities/log/log_response.dart';
import 'package:rolla_zadatak/features/log_page/domain/repositories/log_repository_interface.dart';
import 'package:rolla_zadatak/utils/utils.dart';

@LazySingleton(as: ILogRepositoryInterface)
class LogRepository implements ILogRepositoryInterface {
  @override
  Future<Either<LogFailure, List<Log>>> getLogs() async {
  final dio = Dio(BaseOptions(validateStatus: (status) => true,));
  Response response = await dio.get('https://raw.githubusercontent.com/json-iterator/test-data/master/large-file.json');
  if (response.isSuccessful()) {
    return compute(parseLogResponse, response.data);
  } else if (response.statusCode == 401) {
      return left(const LogFailure.logError());
    } else if (response.statusCode == 404) {
      return left(const LogFailure.logError());
    } else {
      return left(const LogFailure.logError());
    }
  
}

  Either<LogFailure, List<Log>> parseLogResponse(dynamic responseBody) {
    final list = jsonDecode(responseBody) as List<dynamic>;
    var logs = list.map((log) => Log.fromJson(log)).toList();
    
    return right(mergeSortLogList(logs));
  }
}