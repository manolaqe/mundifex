// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signin_google.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SignInGoogle {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(ActionResult result) $default, {
    required TResult Function(AppUser user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(ActionResult result)? $default, {
    TResult? Function(AppUser user)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(ActionResult result)? $default, {
    TResult Function(AppUser user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(SignInGoogleStart value) $default, {
    required TResult Function(SignInGoogleSuccessful value) successful,
    required TResult Function(SignInGoogleError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(SignInGoogleStart value)? $default, {
    TResult? Function(SignInGoogleSuccessful value)? successful,
    TResult? Function(SignInGoogleError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(SignInGoogleStart value)? $default, {
    TResult Function(SignInGoogleSuccessful value)? successful,
    TResult Function(SignInGoogleError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInGoogleCopyWith<$Res> {
  factory $SignInGoogleCopyWith(
          SignInGoogle value, $Res Function(SignInGoogle) then) =
      _$SignInGoogleCopyWithImpl<$Res, SignInGoogle>;
}

/// @nodoc
class _$SignInGoogleCopyWithImpl<$Res, $Val extends SignInGoogle>
    implements $SignInGoogleCopyWith<$Res> {
  _$SignInGoogleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SignInGoogleStartImplCopyWith<$Res> {
  factory _$$SignInGoogleStartImplCopyWith(_$SignInGoogleStartImpl value,
          $Res Function(_$SignInGoogleStartImpl) then) =
      __$$SignInGoogleStartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ActionResult result});
}

/// @nodoc
class __$$SignInGoogleStartImplCopyWithImpl<$Res>
    extends _$SignInGoogleCopyWithImpl<$Res, _$SignInGoogleStartImpl>
    implements _$$SignInGoogleStartImplCopyWith<$Res> {
  __$$SignInGoogleStartImplCopyWithImpl(_$SignInGoogleStartImpl _value,
      $Res Function(_$SignInGoogleStartImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_$SignInGoogleStartImpl(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as ActionResult,
    ));
  }
}

/// @nodoc

class _$SignInGoogleStartImpl implements SignInGoogleStart {
  const _$SignInGoogleStartImpl({required this.result});

  @override
  final ActionResult result;

  @override
  String toString() {
    return 'SignInGoogle(result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInGoogleStartImpl &&
            (identical(other.result, result) || other.result == result));
  }

  @override
  int get hashCode => Object.hash(runtimeType, result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInGoogleStartImplCopyWith<_$SignInGoogleStartImpl> get copyWith =>
      __$$SignInGoogleStartImplCopyWithImpl<_$SignInGoogleStartImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(ActionResult result) $default, {
    required TResult Function(AppUser user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default(result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(ActionResult result)? $default, {
    TResult? Function(AppUser user)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call(result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(ActionResult result)? $default, {
    TResult Function(AppUser user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(SignInGoogleStart value) $default, {
    required TResult Function(SignInGoogleSuccessful value) successful,
    required TResult Function(SignInGoogleError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(SignInGoogleStart value)? $default, {
    TResult? Function(SignInGoogleSuccessful value)? successful,
    TResult? Function(SignInGoogleError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(SignInGoogleStart value)? $default, {
    TResult Function(SignInGoogleSuccessful value)? successful,
    TResult Function(SignInGoogleError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class SignInGoogleStart implements SignInGoogle {
  const factory SignInGoogleStart({required final ActionResult result}) =
      _$SignInGoogleStartImpl;

  ActionResult get result;
  @JsonKey(ignore: true)
  _$$SignInGoogleStartImplCopyWith<_$SignInGoogleStartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignInGoogleSuccessfulImplCopyWith<$Res> {
  factory _$$SignInGoogleSuccessfulImplCopyWith(
          _$SignInGoogleSuccessfulImpl value,
          $Res Function(_$SignInGoogleSuccessfulImpl) then) =
      __$$SignInGoogleSuccessfulImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AppUser user});

  $AppUserCopyWith<$Res> get user;
}

/// @nodoc
class __$$SignInGoogleSuccessfulImplCopyWithImpl<$Res>
    extends _$SignInGoogleCopyWithImpl<$Res, _$SignInGoogleSuccessfulImpl>
    implements _$$SignInGoogleSuccessfulImplCopyWith<$Res> {
  __$$SignInGoogleSuccessfulImplCopyWithImpl(
      _$SignInGoogleSuccessfulImpl _value,
      $Res Function(_$SignInGoogleSuccessfulImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$SignInGoogleSuccessfulImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AppUser,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AppUserCopyWith<$Res> get user {
    return $AppUserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$SignInGoogleSuccessfulImpl implements SignInGoogleSuccessful {
  const _$SignInGoogleSuccessfulImpl(this.user);

  @override
  final AppUser user;

  @override
  String toString() {
    return 'SignInGoogle.successful(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInGoogleSuccessfulImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInGoogleSuccessfulImplCopyWith<_$SignInGoogleSuccessfulImpl>
      get copyWith => __$$SignInGoogleSuccessfulImplCopyWithImpl<
          _$SignInGoogleSuccessfulImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(ActionResult result) $default, {
    required TResult Function(AppUser user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(ActionResult result)? $default, {
    TResult? Function(AppUser user)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(ActionResult result)? $default, {
    TResult Function(AppUser user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(SignInGoogleStart value) $default, {
    required TResult Function(SignInGoogleSuccessful value) successful,
    required TResult Function(SignInGoogleError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(SignInGoogleStart value)? $default, {
    TResult? Function(SignInGoogleSuccessful value)? successful,
    TResult? Function(SignInGoogleError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(SignInGoogleStart value)? $default, {
    TResult Function(SignInGoogleSuccessful value)? successful,
    TResult Function(SignInGoogleError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class SignInGoogleSuccessful implements SignInGoogle {
  const factory SignInGoogleSuccessful(final AppUser user) =
      _$SignInGoogleSuccessfulImpl;

  AppUser get user;
  @JsonKey(ignore: true)
  _$$SignInGoogleSuccessfulImplCopyWith<_$SignInGoogleSuccessfulImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignInGoogleErrorImplCopyWith<$Res> {
  factory _$$SignInGoogleErrorImplCopyWith(_$SignInGoogleErrorImpl value,
          $Res Function(_$SignInGoogleErrorImpl) then) =
      __$$SignInGoogleErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$SignInGoogleErrorImplCopyWithImpl<$Res>
    extends _$SignInGoogleCopyWithImpl<$Res, _$SignInGoogleErrorImpl>
    implements _$$SignInGoogleErrorImplCopyWith<$Res> {
  __$$SignInGoogleErrorImplCopyWithImpl(_$SignInGoogleErrorImpl _value,
      $Res Function(_$SignInGoogleErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$SignInGoogleErrorImpl(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$SignInGoogleErrorImpl implements SignInGoogleError {
  const _$SignInGoogleErrorImpl(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'SignInGoogle.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInGoogleErrorImpl &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInGoogleErrorImplCopyWith<_$SignInGoogleErrorImpl> get copyWith =>
      __$$SignInGoogleErrorImplCopyWithImpl<_$SignInGoogleErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(ActionResult result) $default, {
    required TResult Function(AppUser user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(ActionResult result)? $default, {
    TResult? Function(AppUser user)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(ActionResult result)? $default, {
    TResult Function(AppUser user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(SignInGoogleStart value) $default, {
    required TResult Function(SignInGoogleSuccessful value) successful,
    required TResult Function(SignInGoogleError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(SignInGoogleStart value)? $default, {
    TResult? Function(SignInGoogleSuccessful value)? successful,
    TResult? Function(SignInGoogleError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(SignInGoogleStart value)? $default, {
    TResult Function(SignInGoogleSuccessful value)? successful,
    TResult Function(SignInGoogleError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class SignInGoogleError implements SignInGoogle, ErrorAction {
  const factory SignInGoogleError(
          final Object error, final StackTrace stackTrace) =
      _$SignInGoogleErrorImpl;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$SignInGoogleErrorImplCopyWith<_$SignInGoogleErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
