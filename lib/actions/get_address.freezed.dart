// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_address.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GetAddress {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(AddressData addressData) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(AddressData addressData)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(AddressData addressData)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetAddressStart value) $default, {
    required TResult Function(GetAddressSuccessful value) successful,
    required TResult Function(GetAddressError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetAddressStart value)? $default, {
    TResult? Function(GetAddressSuccessful value)? successful,
    TResult? Function(GetAddressError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetAddressStart value)? $default, {
    TResult Function(GetAddressSuccessful value)? successful,
    TResult Function(GetAddressError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetAddressCopyWith<$Res> {
  factory $GetAddressCopyWith(GetAddress value, $Res Function(GetAddress) then) =
      _$GetAddressCopyWithImpl<$Res, GetAddress>;
}

/// @nodoc
class _$GetAddressCopyWithImpl<$Res, $Val extends GetAddress> implements $GetAddressCopyWith<$Res> {
  _$GetAddressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetAddressStartImplCopyWith<$Res> {
  factory _$$GetAddressStartImplCopyWith(_$GetAddressStartImpl value, $Res Function(_$GetAddressStartImpl) then) =
      __$$GetAddressStartImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAddressStartImplCopyWithImpl<$Res> extends _$GetAddressCopyWithImpl<$Res, _$GetAddressStartImpl>
    implements _$$GetAddressStartImplCopyWith<$Res> {
  __$$GetAddressStartImplCopyWithImpl(_$GetAddressStartImpl _value, $Res Function(_$GetAddressStartImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetAddressStartImpl implements GetAddressStart {
  const _$GetAddressStartImpl();

  @override
  String toString() {
    return 'GetAddress()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$GetAddressStartImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(AddressData addressData) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(AddressData addressData)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(AddressData addressData)? successful,
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
    TResult Function(GetAddressStart value) $default, {
    required TResult Function(GetAddressSuccessful value) successful,
    required TResult Function(GetAddressError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetAddressStart value)? $default, {
    TResult? Function(GetAddressSuccessful value)? successful,
    TResult? Function(GetAddressError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetAddressStart value)? $default, {
    TResult Function(GetAddressSuccessful value)? successful,
    TResult Function(GetAddressError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class GetAddressStart implements GetAddress {
  const factory GetAddressStart() = _$GetAddressStartImpl;
}

/// @nodoc
abstract class _$$GetAddressSuccessfulImplCopyWith<$Res> {
  factory _$$GetAddressSuccessfulImplCopyWith(
          _$GetAddressSuccessfulImpl value, $Res Function(_$GetAddressSuccessfulImpl) then) =
      __$$GetAddressSuccessfulImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AddressData addressData});

  $AddressDataCopyWith<$Res> get addressData;
}

/// @nodoc
class __$$GetAddressSuccessfulImplCopyWithImpl<$Res> extends _$GetAddressCopyWithImpl<$Res, _$GetAddressSuccessfulImpl>
    implements _$$GetAddressSuccessfulImplCopyWith<$Res> {
  __$$GetAddressSuccessfulImplCopyWithImpl(
      _$GetAddressSuccessfulImpl _value, $Res Function(_$GetAddressSuccessfulImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addressData = null,
  }) {
    return _then(_$GetAddressSuccessfulImpl(
      null == addressData
          ? _value.addressData
          : addressData // ignore: cast_nullable_to_non_nullable
              as AddressData,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressDataCopyWith<$Res> get addressData {
    return $AddressDataCopyWith<$Res>(_value.addressData, (value) {
      return _then(_value.copyWith(addressData: value));
    });
  }
}

/// @nodoc

class _$GetAddressSuccessfulImpl implements GetAddressSuccessful {
  const _$GetAddressSuccessfulImpl(this.addressData);

  @override
  final AddressData addressData;

  @override
  String toString() {
    return 'GetAddress.successful(addressData: $addressData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAddressSuccessfulImpl &&
            (identical(other.addressData, addressData) || other.addressData == addressData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, addressData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAddressSuccessfulImplCopyWith<_$GetAddressSuccessfulImpl> get copyWith =>
      __$$GetAddressSuccessfulImplCopyWithImpl<_$GetAddressSuccessfulImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(AddressData addressData) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(addressData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(AddressData addressData)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call(addressData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(AddressData addressData)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(addressData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetAddressStart value) $default, {
    required TResult Function(GetAddressSuccessful value) successful,
    required TResult Function(GetAddressError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetAddressStart value)? $default, {
    TResult? Function(GetAddressSuccessful value)? successful,
    TResult? Function(GetAddressError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetAddressStart value)? $default, {
    TResult Function(GetAddressSuccessful value)? successful,
    TResult Function(GetAddressError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class GetAddressSuccessful implements GetAddress {
  const factory GetAddressSuccessful(final AddressData addressData) = _$GetAddressSuccessfulImpl;

  AddressData get addressData;
  @JsonKey(ignore: true)
  _$$GetAddressSuccessfulImplCopyWith<_$GetAddressSuccessfulImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetAddressErrorImplCopyWith<$Res> {
  factory _$$GetAddressErrorImplCopyWith(_$GetAddressErrorImpl value, $Res Function(_$GetAddressErrorImpl) then) =
      __$$GetAddressErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$GetAddressErrorImplCopyWithImpl<$Res> extends _$GetAddressCopyWithImpl<$Res, _$GetAddressErrorImpl>
    implements _$$GetAddressErrorImplCopyWith<$Res> {
  __$$GetAddressErrorImplCopyWithImpl(_$GetAddressErrorImpl _value, $Res Function(_$GetAddressErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$GetAddressErrorImpl(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$GetAddressErrorImpl implements GetAddressError {
  const _$GetAddressErrorImpl(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'GetAddress.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAddressErrorImpl &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) || other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAddressErrorImplCopyWith<_$GetAddressErrorImpl> get copyWith =>
      __$$GetAddressErrorImplCopyWithImpl<_$GetAddressErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(AddressData addressData) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(AddressData addressData)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(AddressData addressData)? successful,
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
    TResult Function(GetAddressStart value) $default, {
    required TResult Function(GetAddressSuccessful value) successful,
    required TResult Function(GetAddressError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetAddressStart value)? $default, {
    TResult? Function(GetAddressSuccessful value)? successful,
    TResult? Function(GetAddressError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetAddressStart value)? $default, {
    TResult Function(GetAddressSuccessful value)? successful,
    TResult Function(GetAddressError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetAddressError implements GetAddress, ErrorAction {
  const factory GetAddressError(final Object error, final StackTrace stackTrace) = _$GetAddressErrorImpl;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$GetAddressErrorImplCopyWith<_$GetAddressErrorImpl> get copyWith => throw _privateConstructorUsedError;
}
