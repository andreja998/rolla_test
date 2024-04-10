// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'log_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LogFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() logError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? logError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? logError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LogError value) logError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LogError value)? logError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LogError value)? logError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LogFailureCopyWith<$Res> {
  factory $LogFailureCopyWith(
          LogFailure value, $Res Function(LogFailure) then) =
      _$LogFailureCopyWithImpl<$Res, LogFailure>;
}

/// @nodoc
class _$LogFailureCopyWithImpl<$Res, $Val extends LogFailure>
    implements $LogFailureCopyWith<$Res> {
  _$LogFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LogErrorCopyWith<$Res> {
  factory _$$LogErrorCopyWith(
          _$LogError value, $Res Function(_$LogError) then) =
      __$$LogErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogErrorCopyWithImpl<$Res>
    extends _$LogFailureCopyWithImpl<$Res, _$LogError>
    implements _$$LogErrorCopyWith<$Res> {
  __$$LogErrorCopyWithImpl(_$LogError _value, $Res Function(_$LogError) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LogError implements LogError {
  const _$LogError();

  @override
  String toString() {
    return 'LogFailure.logError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() logError,
  }) {
    return logError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? logError,
  }) {
    return logError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? logError,
    required TResult orElse(),
  }) {
    if (logError != null) {
      return logError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LogError value) logError,
  }) {
    return logError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LogError value)? logError,
  }) {
    return logError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LogError value)? logError,
    required TResult orElse(),
  }) {
    if (logError != null) {
      return logError(this);
    }
    return orElse();
  }
}

abstract class LogError implements LogFailure {
  const factory LogError() = _$LogError;
}
