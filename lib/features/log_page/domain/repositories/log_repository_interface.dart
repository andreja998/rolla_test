
import 'package:fpdart/fpdart.dart';
import 'package:rolla_zadatak/features/log_page/domain/entities/failures/log_failure.dart';
import 'package:rolla_zadatak/features/log_page/domain/entities/log/log.dart';
import 'package:rolla_zadatak/features/log_page/domain/entities/log/log_response.dart';

abstract class ILogRepositoryInterface {
  Future<Either<LogFailure, List<Log>>> getLogs();
}