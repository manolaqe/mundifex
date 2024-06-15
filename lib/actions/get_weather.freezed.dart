// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_weather.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GetWeather {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(CurrentWeather currentWeather) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(CurrentWeather currentWeather)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(CurrentWeather currentWeather)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetWeatherStart value) $default, {
    required TResult Function(GetWeatherSuccessful value) successful,
    required TResult Function(GetWeatherError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetWeatherStart value)? $default, {
    TResult? Function(GetWeatherSuccessful value)? successful,
    TResult? Function(GetWeatherError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetWeatherStart value)? $default, {
    TResult Function(GetWeatherSuccessful value)? successful,
    TResult Function(GetWeatherError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetWeatherCopyWith<$Res> {
  factory $GetWeatherCopyWith(GetWeather value, $Res Function(GetWeather) then) =
      _$GetWeatherCopyWithImpl<$Res, GetWeather>;
}

/// @nodoc
class _$GetWeatherCopyWithImpl<$Res, $Val extends GetWeather> implements $GetWeatherCopyWith<$Res> {
  _$GetWeatherCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetWeatherStartImplCopyWith<$Res> {
  factory _$$GetWeatherStartImplCopyWith(_$GetWeatherStartImpl value, $Res Function(_$GetWeatherStartImpl) then) =
      __$$GetWeatherStartImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetWeatherStartImplCopyWithImpl<$Res> extends _$GetWeatherCopyWithImpl<$Res, _$GetWeatherStartImpl>
    implements _$$GetWeatherStartImplCopyWith<$Res> {
  __$$GetWeatherStartImplCopyWithImpl(_$GetWeatherStartImpl _value, $Res Function(_$GetWeatherStartImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetWeatherStartImpl implements GetWeatherStart {
  const _$GetWeatherStartImpl();

  @override
  String toString() {
    return 'GetWeather()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$GetWeatherStartImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(CurrentWeather currentWeather) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(CurrentWeather currentWeather)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(CurrentWeather currentWeather)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetWeatherStart value) $default, {
    required TResult Function(GetWeatherSuccessful value) successful,
    required TResult Function(GetWeatherError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetWeatherStart value)? $default, {
    TResult? Function(GetWeatherSuccessful value)? successful,
    TResult? Function(GetWeatherError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetWeatherStart value)? $default, {
    TResult Function(GetWeatherSuccessful value)? successful,
    TResult Function(GetWeatherError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class GetWeatherStart implements GetWeather {
  const factory GetWeatherStart() = _$GetWeatherStartImpl;
}

/// @nodoc
abstract class _$$GetWeatherSuccessfulImplCopyWith<$Res> {
  factory _$$GetWeatherSuccessfulImplCopyWith(
          _$GetWeatherSuccessfulImpl value, $Res Function(_$GetWeatherSuccessfulImpl) then) =
      __$$GetWeatherSuccessfulImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CurrentWeather currentWeather});

  $CurrentWeatherCopyWith<$Res> get currentWeather;
}

/// @nodoc
class __$$GetWeatherSuccessfulImplCopyWithImpl<$Res> extends _$GetWeatherCopyWithImpl<$Res, _$GetWeatherSuccessfulImpl>
    implements _$$GetWeatherSuccessfulImplCopyWith<$Res> {
  __$$GetWeatherSuccessfulImplCopyWithImpl(
      _$GetWeatherSuccessfulImpl _value, $Res Function(_$GetWeatherSuccessfulImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentWeather = null,
  }) {
    return _then(_$GetWeatherSuccessfulImpl(
      null == currentWeather
          ? _value.currentWeather
          : currentWeather // ignore: cast_nullable_to_non_nullable
              as CurrentWeather,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CurrentWeatherCopyWith<$Res> get currentWeather {
    return $CurrentWeatherCopyWith<$Res>(_value.currentWeather, (value) {
      return _then(_value.copyWith(currentWeather: value));
    });
  }
}

/// @nodoc

class _$GetWeatherSuccessfulImpl implements GetWeatherSuccessful {
  const _$GetWeatherSuccessfulImpl(this.currentWeather);

  @override
  final CurrentWeather currentWeather;

  @override
  String toString() {
    return 'GetWeather.successful(currentWeather: $currentWeather)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetWeatherSuccessfulImpl &&
            (identical(other.currentWeather, currentWeather) || other.currentWeather == currentWeather));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentWeather);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetWeatherSuccessfulImplCopyWith<_$GetWeatherSuccessfulImpl> get copyWith =>
      __$$GetWeatherSuccessfulImplCopyWithImpl<_$GetWeatherSuccessfulImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(CurrentWeather currentWeather) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(currentWeather);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(CurrentWeather currentWeather)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call(currentWeather);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(CurrentWeather currentWeather)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(currentWeather);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetWeatherStart value) $default, {
    required TResult Function(GetWeatherSuccessful value) successful,
    required TResult Function(GetWeatherError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetWeatherStart value)? $default, {
    TResult? Function(GetWeatherSuccessful value)? successful,
    TResult? Function(GetWeatherError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetWeatherStart value)? $default, {
    TResult Function(GetWeatherSuccessful value)? successful,
    TResult Function(GetWeatherError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class GetWeatherSuccessful implements GetWeather {
  const factory GetWeatherSuccessful(final CurrentWeather currentWeather) = _$GetWeatherSuccessfulImpl;

  CurrentWeather get currentWeather;
  @JsonKey(ignore: true)
  _$$GetWeatherSuccessfulImplCopyWith<_$GetWeatherSuccessfulImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetWeatherErrorImplCopyWith<$Res> {
  factory _$$GetWeatherErrorImplCopyWith(_$GetWeatherErrorImpl value, $Res Function(_$GetWeatherErrorImpl) then) =
      __$$GetWeatherErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$GetWeatherErrorImplCopyWithImpl<$Res> extends _$GetWeatherCopyWithImpl<$Res, _$GetWeatherErrorImpl>
    implements _$$GetWeatherErrorImplCopyWith<$Res> {
  __$$GetWeatherErrorImplCopyWithImpl(_$GetWeatherErrorImpl _value, $Res Function(_$GetWeatherErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$GetWeatherErrorImpl(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$GetWeatherErrorImpl implements GetWeatherError {
  const _$GetWeatherErrorImpl(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'GetWeather.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetWeatherErrorImpl &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) || other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetWeatherErrorImplCopyWith<_$GetWeatherErrorImpl> get copyWith =>
      __$$GetWeatherErrorImplCopyWithImpl<_$GetWeatherErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(CurrentWeather currentWeather) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(CurrentWeather currentWeather)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(CurrentWeather currentWeather)? successful,
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
    TResult Function(GetWeatherStart value) $default, {
    required TResult Function(GetWeatherSuccessful value) successful,
    required TResult Function(GetWeatherError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetWeatherStart value)? $default, {
    TResult? Function(GetWeatherSuccessful value)? successful,
    TResult? Function(GetWeatherError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetWeatherStart value)? $default, {
    TResult Function(GetWeatherSuccessful value)? successful,
    TResult Function(GetWeatherError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetWeatherError implements GetWeather, ErrorAction {
  const factory GetWeatherError(final Object error, final StackTrace stackTrace) = _$GetWeatherErrorImpl;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$GetWeatherErrorImplCopyWith<_$GetWeatherErrorImpl> get copyWith => throw _privateConstructorUsedError;
}
