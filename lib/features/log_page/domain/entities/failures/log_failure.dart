import 'package:freezed_annotation/freezed_annotation.dart';

part 'log_failure.freezed.dart';

@freezed
abstract class LogFailure with _$LogFailure {
  const factory LogFailure.logError() = LogError;
}
