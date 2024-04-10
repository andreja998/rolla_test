// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'actor.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Actor _$ActorFromJson(Map<String, dynamic> json) {
  return _Actor.fromJson(json);
}

/// @nodoc
mixin _$Actor {
  dynamic get login => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ActorCopyWith<Actor> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActorCopyWith<$Res> {
  factory $ActorCopyWith(Actor value, $Res Function(Actor) then) =
      _$ActorCopyWithImpl<$Res, Actor>;
  @useResult
  $Res call({dynamic login});
}

/// @nodoc
class _$ActorCopyWithImpl<$Res, $Val extends Actor>
    implements $ActorCopyWith<$Res> {
  _$ActorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? login = freezed,
  }) {
    return _then(_value.copyWith(
      login: freezed == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ActorCopyWith<$Res> implements $ActorCopyWith<$Res> {
  factory _$$_ActorCopyWith(_$_Actor value, $Res Function(_$_Actor) then) =
      __$$_ActorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic login});
}

/// @nodoc
class __$$_ActorCopyWithImpl<$Res> extends _$ActorCopyWithImpl<$Res, _$_Actor>
    implements _$$_ActorCopyWith<$Res> {
  __$$_ActorCopyWithImpl(_$_Actor _value, $Res Function(_$_Actor) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? login = freezed,
  }) {
    return _then(_$_Actor(
      login: freezed == login ? _value.login! : login,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_Actor implements _Actor {
  const _$_Actor({this.login = ''});

  factory _$_Actor.fromJson(Map<String, dynamic> json) =>
      _$$_ActorFromJson(json);

  @override
  @JsonKey()
  final dynamic login;

  @override
  String toString() {
    return 'Actor(login: $login)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Actor &&
            const DeepCollectionEquality().equals(other.login, login));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(login));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ActorCopyWith<_$_Actor> get copyWith =>
      __$$_ActorCopyWithImpl<_$_Actor>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ActorToJson(
      this,
    );
  }
}

abstract class _Actor implements Actor {
  const factory _Actor({final dynamic login}) = _$_Actor;

  factory _Actor.fromJson(Map<String, dynamic> json) = _$_Actor.fromJson;

  @override
  dynamic get login;
  @override
  @JsonKey(ignore: true)
  _$$_ActorCopyWith<_$_Actor> get copyWith =>
      throw _privateConstructorUsedError;
}
