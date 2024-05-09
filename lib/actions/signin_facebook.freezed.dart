// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signin_facebook.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SignInFacebook {
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
    TResult Function(SignInFacebookStart value) $default, {
    required TResult Function(SignInFacebookSuccessful value) successful,
    required TResult Function(SignInFacebookError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(SignInFacebookStart value)? $default, {
    TResult? Function(SignInFacebookSuccessful value)? successful,
    TResult? Function(SignInFacebookError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(SignInFacebookStart value)? $default, {
    TResult Function(SignInFacebookSuccessful value)? successful,
    TResult Function(SignInFacebookError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInFacebookCopyWith<$Res> {
  factory $SignInFacebookCopyWith(
          SignInFacebook value, $Res Function(SignInFacebook) then) =
      _$SignInFacebookCopyWithImpl<$Res, SignInFacebook>;
}

/// @nodoc
class _$SignInFacebookCopyWithImpl<$Res, $Val extends SignInFacebook>
    implements $SignInFacebookCopyWith<$Res> {
  _$SignInFacebookCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SignInFacebookStartImplCopyWith<$Res> {
  factory _$$SignInFacebookStartImplCopyWith(_$SignInFacebookStartImpl value,
          $Res Function(_$SignInFacebookStartImpl) then) =
      __$$SignInFacebookStartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ActionResult result});
}

/// @nodoc
class __$$SignInFacebookStartImplCopyWithImpl<$Res>
    extends _$SignInFacebookCopyWithImpl<$Res, _$SignInFacebookStartImpl>
    implements _$$SignInFacebookStartImplCopyWith<$Res> {
  __$$SignInFacebookStartImplCopyWithImpl(_$SignInFacebookStartImpl _value,
      $Res Function(_$SignInFacebookStartImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_$SignInFacebookStartImpl(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as ActionResult,
    ));
  }
}

/// @nodoc

class _$SignInFacebookStartImpl implements SignInFacebookStart {
  const _$SignInFacebookStartImpl({required this.result});

  @override
  final ActionResult result;

  @override
  String toString() {
    return 'SignInFacebook(result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInFacebookStartImpl &&
            (identical(other.result, result) || other.result == result));
  }

  @override
  int get hashCode => Object.hash(runtimeType, result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInFacebookStartImplCopyWith<_$SignInFacebookStartImpl> get copyWith =>
      __$$SignInFacebookStartImplCopyWithImpl<_$SignInFacebookStartImpl>(
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
    TResult Function(SignInFacebookStart value) $default, {
    required TResult Function(SignInFacebookSuccessful value) successful,
    required TResult Function(SignInFacebookError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(SignInFacebookStart value)? $default, {
    TResult? Function(SignInFacebookSuccessful value)? successful,
    TResult? Function(SignInFacebookError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(SignInFacebookStart value)? $default, {
    TResult Function(SignInFacebookSuccessful value)? successful,
    TResult Function(SignInFacebookError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class SignInFacebookStart implements SignInFacebook {
  const factory SignInFacebookStart({required final ActionResult result}) =
      _$SignInFacebookStartImpl;

  ActionResult get result;
  @JsonKey(ignore: true)
  _$$SignInFacebookStartImplCopyWith<_$SignInFacebookStartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignInFacebookSuccessfulImplCopyWith<$Res> {
  factory _$$SignInFacebookSuccessfulImplCopyWith(
          _$SignInFacebookSuccessfulImpl value,
          $Res Function(_$SignInFacebookSuccessfulImpl) then) =
      __$$SignInFacebookSuccessfulImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AppUser user});

  $AppUserCopyWith<$Res> get user;
}

/// @nodoc
class __$$SignInFacebookSuccessfulImplCopyWithImpl<$Res>
    extends _$SignInFacebookCopyWithImpl<$Res, _$SignInFacebookSuccessfulImpl>
    implements _$$SignInFacebookSuccessfulImplCopyWith<$Res> {
  __$$SignInFacebookSuccessfulImplCopyWithImpl(
      _$SignInFacebookSuccessfulImpl _value,
      $Res Function(_$SignInFacebookSuccessfulImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$SignInFacebookSuccessfulImpl(
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

class _$SignInFacebookSuccessfulImpl implements SignInFacebookSuccessful {
  const _$SignInFacebookSuccessfulImpl(this.user);

  @override
  final AppUser user;

  @override
  String toString() {
    return 'SignInFacebook.successful(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInFacebookSuccessfulImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInFacebookSuccessfulImplCopyWith<_$SignInFacebookSuccessfulImpl>
      get copyWith => __$$SignInFacebookSuccessfulImplCopyWithImpl<
          _$SignInFacebookSuccessfulImpl>(this, _$identity);

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
    TResult Function(SignInFacebookStart value) $default, {
    required TResult Function(SignInFacebookSuccessful value) successful,
    required TResult Function(SignInFacebookError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(SignInFacebookStart value)? $default, {
    TResult? Function(SignInFacebookSuccessful value)? successful,
    TResult? Function(SignInFacebookError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(SignInFacebookStart value)? $default, {
    TResult Function(SignInFacebookSuccessful value)? successful,
    TResult Function(SignInFacebookError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class SignInFacebookSuccessful implements SignInFacebook {
  const factory SignInFacebookSuccessful(final AppUser user) =
      _$SignInFacebookSuccessfulImpl;

  AppUser get user;
  @JsonKey(ignore: true)
  _$$SignInFacebookSuccessfulImplCopyWith<_$SignInFacebookSuccessfulImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignInFacebookErrorImplCopyWith<$Res> {
  factory _$$SignInFacebookErrorImplCopyWith(_$SignInFacebookErrorImpl value,
          $Res Function(_$SignInFacebookErrorImpl) then) =
      __$$SignInFacebookErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$SignInFacebookErrorImplCopyWithImpl<$Res>
    extends _$SignInFacebookCopyWithImpl<$Res, _$SignInFacebookErrorImpl>
    implements _$$SignInFacebookErrorImplCopyWith<$Res> {
  __$$SignInFacebookErrorImplCopyWithImpl(_$SignInFacebookErrorImpl _value,
      $Res Function(_$SignInFacebookErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$SignInFacebookErrorImpl(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$SignInFacebookErrorImpl implements SignInFacebookError {
  const _$SignInFacebookErrorImpl(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'SignInFacebook.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInFacebookErrorImpl &&
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
  _$$SignInFacebookErrorImplCopyWith<_$SignInFacebookErrorImpl> get copyWith =>
      __$$SignInFacebookErrorImplCopyWithImpl<_$SignInFacebookErrorImpl>(
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
    TResult Function(SignInFacebookStart value) $default, {
    required TResult Function(SignInFacebookSuccessful value) successful,
    required TResult Function(SignInFacebookError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(SignInFacebookStart value)? $default, {
    TResult? Function(SignInFacebookSuccessful value)? successful,
    TResult? Function(SignInFacebookError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(SignInFacebookStart value)? $default, {
    TResult Function(SignInFacebookSuccessful value)? successful,
    TResult Function(SignInFacebookError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class SignInFacebookError implements SignInFacebook, ErrorAction {
  const factory SignInFacebookError(
          final Object error, final StackTrace stackTrace) =
      _$SignInFacebookErrorImpl;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$SignInFacebookErrorImplCopyWith<_$SignInFacebookErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
