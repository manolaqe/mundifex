// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_geocoding.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LocationGeocoding _$LocationGeocodingFromJson(Map<String, dynamic> json) {
  return LocationGeocoding$.fromJson(json);
}

/// @nodoc
mixin _$LocationGeocoding {
  double get lat => throw _privateConstructorUsedError;
  double get lon => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationGeocodingCopyWith<LocationGeocoding> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationGeocodingCopyWith<$Res> {
  factory $LocationGeocodingCopyWith(
          LocationGeocoding value, $Res Function(LocationGeocoding) then) =
      _$LocationGeocodingCopyWithImpl<$Res, LocationGeocoding>;
  @useResult
  $Res call({double lat, double lon});
}

/// @nodoc
class _$LocationGeocodingCopyWithImpl<$Res, $Val extends LocationGeocoding>
    implements $LocationGeocodingCopyWith<$Res> {
  _$LocationGeocodingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? lon = null,
  }) {
    return _then(_value.copyWith(
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lon: null == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocationGeocoding$ImplCopyWith<$Res>
    implements $LocationGeocodingCopyWith<$Res> {
  factory _$$LocationGeocoding$ImplCopyWith(_$LocationGeocoding$Impl value,
          $Res Function(_$LocationGeocoding$Impl) then) =
      __$$LocationGeocoding$ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double lat, double lon});
}

/// @nodoc
class __$$LocationGeocoding$ImplCopyWithImpl<$Res>
    extends _$LocationGeocodingCopyWithImpl<$Res, _$LocationGeocoding$Impl>
    implements _$$LocationGeocoding$ImplCopyWith<$Res> {
  __$$LocationGeocoding$ImplCopyWithImpl(_$LocationGeocoding$Impl _value,
      $Res Function(_$LocationGeocoding$Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? lon = null,
  }) {
    return _then(_$LocationGeocoding$Impl(
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lon: null == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocationGeocoding$Impl implements LocationGeocoding$ {
  const _$LocationGeocoding$Impl({required this.lat, required this.lon});

  factory _$LocationGeocoding$Impl.fromJson(Map<String, dynamic> json) =>
      _$$LocationGeocoding$ImplFromJson(json);

  @override
  final double lat;
  @override
  final double lon;

  @override
  String toString() {
    return 'LocationGeocoding(lat: $lat, lon: $lon)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationGeocoding$Impl &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lon, lon) || other.lon == lon));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, lat, lon);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationGeocoding$ImplCopyWith<_$LocationGeocoding$Impl> get copyWith =>
      __$$LocationGeocoding$ImplCopyWithImpl<_$LocationGeocoding$Impl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationGeocoding$ImplToJson(
      this,
    );
  }
}

abstract class LocationGeocoding$ implements LocationGeocoding {
  const factory LocationGeocoding$(
      {required final double lat,
      required final double lon}) = _$LocationGeocoding$Impl;

  factory LocationGeocoding$.fromJson(Map<String, dynamic> json) =
      _$LocationGeocoding$Impl.fromJson;

  @override
  double get lat;
  @override
  double get lon;
  @override
  @JsonKey(ignore: true)
  _$$LocationGeocoding$ImplCopyWith<_$LocationGeocoding$Impl> get copyWith =>
      throw _privateConstructorUsedError;
}
