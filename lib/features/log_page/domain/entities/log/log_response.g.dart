// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'log_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LogResponse _$$_LogResponseFromJson(Map<String, dynamic> json) =>
    _$_LogResponse(
      logs: (json['logs'] as List<dynamic>)
          .map((e) => Log.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_LogResponseToJson(_$_LogResponse instance) =>
    <String, dynamic>{
      'logs': instance.logs.map((e) => e.toJson()).toList(),
    };
