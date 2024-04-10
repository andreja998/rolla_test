import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rolla_zadatak/features/log_page/domain/entities/log/log.dart';

part 'log_response.freezed.dart';
part 'log_response.g.dart';

@freezed
class LogResponse with _$LogResponse {
  @JsonSerializable(explicitToJson: true)

  const factory LogResponse({
    required List<Log> logs
  }) = _LogResponse;

  factory LogResponse.fromJson(Map<String, dynamic> json) => _$LogResponseFromJson(json);
}