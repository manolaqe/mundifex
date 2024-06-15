// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address_coordinates.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AddressCoordinates _$AddressCoordinatesFromJson(Map<String, dynamic> json) {
  return AddressCoordinates$.fromJson(json);
}

/// @nodoc
mixin _$AddressCoordinates {
  double get lat => throw _privateConstructorUsedError;
  double get lng => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddressCoordinatesCopyWith<AddressCoordinates> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressCoordinatesCopyWith<$Res> {
  factory $AddressCoordinatesCopyWith(AddressCoordinates value, $Res Function(AddressCoordinates) then) =
      _$AddressCoordinatesCopyWithImpl<$Res, AddressCoordinates>;
  @useResult
  $Res call({double lat, double lng});
}

/// @nodoc
class _$AddressCoordinatesCopyWithImpl<$Res, $Val extends AddressCoordinates>
    implements $AddressCoordinatesCopyWith<$Res> {
  _$AddressCoordinatesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? lng = null,
  }) {
    return _then(_value.copyWith(
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lng: null == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddressCoordinates$ImplCopyWith<$Res> implements $AddressCoordinatesCopyWith<$Res> {
  factory _$$AddressCoordinates$ImplCopyWith(
          _$AddressCoordinates$Impl value, $Res Function(_$AddressCoordinates$Impl) then) =
      __$$AddressCoordinates$ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double lat, double lng});
}

/// @nodoc
class __$$AddressCoordinates$ImplCopyWithImpl<$Res>
    extends _$AddressCoordinatesCopyWithImpl<$Res, _$AddressCoordinates$Impl>
    implements _$$AddressCoordinates$ImplCopyWith<$Res> {
  __$$AddressCoordinates$ImplCopyWithImpl(
      _$AddressCoordinates$Impl _value, $Res Function(_$AddressCoordinates$Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? lng = null,
  }) {
    return _then(_$AddressCoordinates$Impl(
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lng: null == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddressCoordinates$Impl implements AddressCoordinates$ {
  const _$AddressCoordinates$Impl({this.lat = 0.0, this.lng = 0.0});

  factory _$AddressCoordinates$Impl.fromJson(Map<String, dynamic> json) => _$$AddressCoordinates$ImplFromJson(json);

  @override
  @JsonKey()
  final double lat;
  @override
  @JsonKey()
  final double lng;

  @override
  String toString() {
    return 'AddressCoordinates(lat: $lat, lng: $lng)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressCoordinates$Impl &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, lat, lng);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressCoordinates$ImplCopyWith<_$AddressCoordinates$Impl> get copyWith =>
      __$$AddressCoordinates$ImplCopyWithImpl<_$AddressCoordinates$Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddressCoordinates$ImplToJson(
      this,
    );
  }
}

abstract class AddressCoordinates$ implements AddressCoordinates {
  const factory AddressCoordinates$({final double lat, final double lng}) = _$AddressCoordinates$Impl;

  factory AddressCoordinates$.fromJson(Map<String, dynamic> json) = _$AddressCoordinates$Impl.fromJson;

  @override
  double get lat;
  @override
  double get lng;
  @override
  @JsonKey(ignore: true)
  _$$AddressCoordinates$ImplCopyWith<_$AddressCoordinates$Impl> get copyWith => throw _privateConstructorUsedError;
}
