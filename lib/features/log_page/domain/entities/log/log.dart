import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rolla_zadatak/features/log_page/domain/entities/log/actor.dart';
import 'package:rolla_zadatak/features/log_page/domain/entities/log/payload.dart';

part 'log.freezed.dart';
part 'log.g.dart';

@freezed
class Log with _$Log {
  @JsonSerializable(explicitToJson: true)

  const factory Log({
    String? id,
    String? type,
    @JsonKey(name: 'created_at') String? createdAt,
    Actor? actor,
    Payload? payload

  }) = _Log;

  factory Log.fromJson(Map<String, dynamic> json) => _$LogFromJson(json);
}