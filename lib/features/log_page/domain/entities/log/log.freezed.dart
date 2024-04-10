// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'log.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Log _$LogFromJson(Map<String, dynamic> json) {
  return _Log.fromJson(json);
}

/// @nodoc
mixin _$Log {
  String? get id => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  Actor? get actor => throw _privateConstructorUsedError;
  Payload? get payload => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LogCopyWith<Log> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LogCopyWith<$Res> {
  factory $LogCopyWith(Log value, $Res Function(Log) then) =
      _$LogCopyWithImpl<$Res, Log>;
  @useResult
  $Res call(
      {String? id,
      String? type,
      @JsonKey(name: 'created_at') String? createdAt,
      Actor? actor,
      Payload? payload});

  $ActorCopyWith<$Res>? get actor;
  $PayloadCopyWith<$Res>? get payload;
}

/// @nodoc
class _$LogCopyWithImpl<$Res, $Val extends Log> implements $LogCopyWith<$Res> {
  _$LogCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
    Object? createdAt = freezed,
    Object? actor = freezed,
    Object? payload = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      actor: freezed == actor
          ? _value.actor
          : actor // ignore: cast_nullable_to_non_nullable
              as Actor?,
      payload: freezed == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as Payload?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ActorCopyWith<$Res>? get actor {
    if (_value.actor == null) {
      return null;
    }

    return $ActorCopyWith<$Res>(_value.actor!, (value) {
      return _then(_value.copyWith(actor: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PayloadCopyWith<$Res>? get payload {
    if (_value.payload == null) {
      return null;
    }

    return $PayloadCopyWith<$Res>(_value.payload!, (value) {
      return _then(_value.copyWith(payload: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_LogCopyWith<$Res> implements $LogCopyWith<$Res> {
  factory _$$_LogCopyWith(_$_Log value, $Res Function(_$_Log) then) =
      __$$_LogCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? type,
      @JsonKey(name: 'created_at') String? createdAt,
      Actor? actor,
      Payload? payload});

  @override
  $ActorCopyWith<$Res>? get actor;
  @override
  $PayloadCopyWith<$Res>? get payload;
}

/// @nodoc
class __$$_LogCopyWithImpl<$Res> extends _$LogCopyWithImpl<$Res, _$_Log>
    implements _$$_LogCopyWith<$Res> {
  __$$_LogCopyWithImpl(_$_Log _value, $Res Function(_$_Log) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
    Object? createdAt = freezed,
    Object? actor = freezed,
    Object? payload = freezed,
  }) {
    return _then(_$_Log(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      actor: freezed == actor
          ? _value.actor
          : actor // ignore: cast_nullable_to_non_nullable
              as Actor?,
      payload: freezed == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as Payload?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_Log implements _Log {
  const _$_Log(
      {this.id,
      this.type,
      @JsonKey(name: 'created_at') this.createdAt,
      this.actor,
      this.payload});

  factory _$_Log.fromJson(Map<String, dynamic> json) => _$$_LogFromJson(json);

  @override
  final String? id;
  @override
  final String? type;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  final Actor? actor;
  @override
  final Payload? payload;

  @override
  String toString() {
    return 'Log(id: $id, type: $type, createdAt: $createdAt, actor: $actor, payload: $payload)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Log &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.actor, actor) || other.actor == actor) &&
            (identical(other.payload, payload) || other.payload == payload));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, type, createdAt, actor, payload);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LogCopyWith<_$_Log> get copyWith =>
      __$$_LogCopyWithImpl<_$_Log>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LogToJson(
      this,
    );
  }
}

abstract class _Log implements Log {
  const factory _Log(
      {final String? id,
      final String? type,
      @JsonKey(name: 'created_at') final String? createdAt,
      final Actor? actor,
      final Payload? payload}) = _$_Log;

  factory _Log.fromJson(Map<String, dynamic> json) = _$_Log.fromJson;

  @override
  String? get id;
  @override
  String? get type;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  Actor? get actor;
  @override
  Payload? get payload;
  @override
  @JsonKey(ignore: true)
  _$$_LogCopyWith<_$_Log> get copyWith => throw _privateConstructorUsedError;
}
