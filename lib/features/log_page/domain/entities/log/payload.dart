import 'package:freezed_annotation/freezed_annotation.dart';

part 'payload.freezed.dart';
part 'payload.g.dart';

@freezed
class Payload with _$Payload {
  @JsonSerializable(explicitToJson: true)

  const factory Payload({
    @Default('') description
  }) = _Payload;

  factory Payload.fromJson(Map<String, dynamic> json) => _$PayloadFromJson(json);
}