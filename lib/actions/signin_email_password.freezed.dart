// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signin_email_password.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SignInEmailPassword {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String email, String password, ActionResult result) $default, {
    required TResult Function(AppUser user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String email, String password, ActionResult result)? $default, {
    TResult? Function(AppUser user)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String email, String password, ActionResult result)? $default, {
    TResult Function(AppUser user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(SignInEmailPasswordStart value) $default, {
    required TResult Function(SignInEmailPasswordSuccessful value) successful,
    required TResult Function(SignInEmailPasswordError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(SignInEmailPasswordStart value)? $default, {
    TResult? Function(SignInEmailPasswordSuccessful value)? successful,
    TResult? Function(SignInEmailPasswordError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(SignInEmailPasswordStart value)? $default, {
    TResult Function(SignInEmailPasswordSuccessful value)? successful,
    TResult Function(SignInEmailPasswordError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInEmailPasswordCopyWith<$Res> {
  factory $SignInEmailPasswordCopyWith(SignInEmailPassword value, $Res Function(SignInEmailPassword) then) =
      _$SignInEmailPasswordCopyWithImpl<$Res, SignInEmailPassword>;
}

/// @nodoc
class _$SignInEmailPasswordCopyWithImpl<$Res, $Val extends SignInEmailPassword>
    implements $SignInEmailPasswordCopyWith<$Res> {
  _$SignInEmailPasswordCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SignInEmailPasswordStartImplCopyWith<$Res> {
  factory _$$SignInEmailPasswordStartImplCopyWith(
          _$SignInEmailPasswordStartImpl value, $Res Function(_$SignInEmailPasswordStartImpl) then) =
      __$$SignInEmailPasswordStartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password, ActionResult result});
}

/// @nodoc
class __$$SignInEmailPasswordStartImplCopyWithImpl<$Res>
    extends _$SignInEmailPasswordCopyWithImpl<$Res, _$SignInEmailPasswordStartImpl>
    implements _$$SignInEmailPasswordStartImplCopyWith<$Res> {
  __$$SignInEmailPasswordStartImplCopyWithImpl(
      _$SignInEmailPasswordStartImpl _value, $Res Function(_$SignInEmailPasswordStartImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? result = null,
  }) {
    return _then(_$SignInEmailPasswordStartImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as ActionResult,
    ));
  }
}

/// @nodoc

class _$SignInEmailPasswordStartImpl implements SignInEmailPasswordStart {
  const _$SignInEmailPasswordStartImpl({required this.email, required this.password, required this.result});

  @override
  final String email;
  @override
  final String password;
  @override
  final ActionResult result;

  @override
  String toString() {
    return 'SignInEmailPassword(email: $email, password: $password, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInEmailPasswordStartImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) || other.password == password) &&
            (identical(other.result, result) || other.result == result));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password, result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInEmailPasswordStartImplCopyWith<_$SignInEmailPasswordStartImpl> get copyWith =>
      __$$SignInEmailPasswordStartImplCopyWithImpl<_$SignInEmailPasswordStartImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String email, String password, ActionResult result) $default, {
    required TResult Function(AppUser user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default(email, password, result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String email, String password, ActionResult result)? $default, {
    TResult? Function(AppUser user)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call(email, password, result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String email, String password, ActionResult result)? $default, {
    TResult Function(AppUser user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(email, password, result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(SignInEmailPasswordStart value) $default, {
    required TResult Function(SignInEmailPasswordSuccessful value) successful,
    required TResult Function(SignInEmailPasswordError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(SignInEmailPasswordStart value)? $default, {
    TResult? Function(SignInEmailPasswordSuccessful value)? successful,
    TResult? Function(SignInEmailPasswordError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(SignInEmailPasswordStart value)? $default, {
    TResult Function(SignInEmailPasswordSuccessful value)? successful,
    TResult Function(SignInEmailPasswordError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class SignInEmailPasswordStart implements SignInEmailPassword {
  const factory SignInEmailPasswordStart(
      {required final String email,
      required final String password,
      required final ActionResult result}) = _$SignInEmailPasswordStartImpl;

  String get email;
  String get password;
  ActionResult get result;
  @JsonKey(ignore: true)
  _$$SignInEmailPasswordStartImplCopyWith<_$SignInEmailPasswordStartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignInEmailPasswordSuccessfulImplCopyWith<$Res> {
  factory _$$SignInEmailPasswordSuccessfulImplCopyWith(
          _$SignInEmailPasswordSuccessfulImpl value, $Res Function(_$SignInEmailPasswordSuccessfulImpl) then) =
      __$$SignInEmailPasswordSuccessfulImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AppUser user});

  $AppUserCopyWith<$Res> get user;
}

/// @nodoc
class __$$SignInEmailPasswordSuccessfulImplCopyWithImpl<$Res>
    extends _$SignInEmailPasswordCopyWithImpl<$Res, _$SignInEmailPasswordSuccessfulImpl>
    implements _$$SignInEmailPasswordSuccessfulImplCopyWith<$Res> {
  __$$SignInEmailPasswordSuccessfulImplCopyWithImpl(
      _$SignInEmailPasswordSuccessfulImpl _value, $Res Function(_$SignInEmailPasswordSuccessfulImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$SignInEmailPasswordSuccessfulImpl(
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

class _$SignInEmailPasswordSuccessfulImpl implements SignInEmailPasswordSuccessful {
  const _$SignInEmailPasswordSuccessfulImpl(this.user);

  @override
  final AppUser user;

  @override
  String toString() {
    return 'SignInEmailPassword.successful(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInEmailPasswordSuccessfulImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInEmailPasswordSuccessfulImplCopyWith<_$SignInEmailPasswordSuccessfulImpl> get copyWith =>
      __$$SignInEmailPasswordSuccessfulImplCopyWithImpl<_$SignInEmailPasswordSuccessfulImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String email, String password, ActionResult result) $default, {
    required TResult Function(AppUser user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String email, String password, ActionResult result)? $default, {
    TResult? Function(AppUser user)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String email, String password, ActionResult result)? $default, {
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
    TResult Function(SignInEmailPasswordStart value) $default, {
    required TResult Function(SignInEmailPasswordSuccessful value) successful,
    required TResult Function(SignInEmailPasswordError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(SignInEmailPasswordStart value)? $default, {
    TResult? Function(SignInEmailPasswordSuccessful value)? successful,
    TResult? Function(SignInEmailPasswordError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(SignInEmailPasswordStart value)? $default, {
    TResult Function(SignInEmailPasswordSuccessful value)? successful,
    TResult Function(SignInEmailPasswordError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class SignInEmailPasswordSuccessful implements SignInEmailPassword {
  const factory SignInEmailPasswordSuccessful(final AppUser user) = _$SignInEmailPasswordSuccessfulImpl;

  AppUser get user;
  @JsonKey(ignore: true)
  _$$SignInEmailPasswordSuccessfulImplCopyWith<_$SignInEmailPasswordSuccessfulImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignInEmailPasswordErrorImplCopyWith<$Res> {
  factory _$$SignInEmailPasswordErrorImplCopyWith(
          _$SignInEmailPasswordErrorImpl value, $Res Function(_$SignInEmailPasswordErrorImpl) then) =
      __$$SignInEmailPasswordErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$SignInEmailPasswordErrorImplCopyWithImpl<$Res>
    extends _$SignInEmailPasswordCopyWithImpl<$Res, _$SignInEmailPasswordErrorImpl>
    implements _$$SignInEmailPasswordErrorImplCopyWith<$Res> {
  __$$SignInEmailPasswordErrorImplCopyWithImpl(
      _$SignInEmailPasswordErrorImpl _value, $Res Function(_$SignInEmailPasswordErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$SignInEmailPasswordErrorImpl(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$SignInEmailPasswordErrorImpl implements SignInEmailPasswordError {
  const _$SignInEmailPasswordErrorImpl(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'SignInEmailPassword.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInEmailPasswordErrorImpl &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) || other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInEmailPasswordErrorImplCopyWith<_$SignInEmailPasswordErrorImpl> get copyWith =>
      __$$SignInEmailPasswordErrorImplCopyWithImpl<_$SignInEmailPasswordErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String email, String password, ActionResult result) $default, {
    required TResult Function(AppUser user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String email, String password, ActionResult result)? $default, {
    TResult? Function(AppUser user)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String email, String password, ActionResult result)? $default, {
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
    TResult Function(SignInEmailPasswordStart value) $default, {
    required TResult Function(SignInEmailPasswordSuccessful value) successful,
    required TResult Function(SignInEmailPasswordError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(SignInEmailPasswordStart value)? $default, {
    TResult? Function(SignInEmailPasswordSuccessful value)? successful,
    TResult? Function(SignInEmailPasswordError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(SignInEmailPasswordStart value)? $default, {
    TResult Function(SignInEmailPasswordSuccessful value)? successful,
    TResult Function(SignInEmailPasswordError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class SignInEmailPasswordError implements SignInEmailPassword, ErrorAction {
  const factory SignInEmailPasswordError(final Object error, final StackTrace stackTrace) =
      _$SignInEmailPasswordErrorImpl;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$SignInEmailPasswordErrorImplCopyWith<_$SignInEmailPasswordErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
