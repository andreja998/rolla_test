// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'log.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Log _$$_LogFromJson(Map<String, dynamic> json) => _$_Log(
      id: json['id'] as String?,
      type: json['type'] as String?,
      createdAt: json['created_at'] as String?,
      actor: json['actor'] == null
          ? null
          : Actor.fromJson(json['actor'] as Map<String, dynamic>),
      payload: json['payload'] == null
          ? null
          : Payload.fromJson(json['payload'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_LogToJson(_$_Log instance) => <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'created_at': instance.createdAt,
      'actor': instance.actor?.toJson(),
      'payload': instance.payload?.toJson(),
    };
