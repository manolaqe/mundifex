// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LocationData _$LocationDataFromJson(Map<String, dynamic> json) {
  return LocationData$.fromJson(json);
}

/// @nodoc
mixin _$LocationData {
  double get lat => throw _privateConstructorUsedError;
  double get lon => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationDataCopyWith<LocationData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationDataCopyWith<$Res> {
  factory $LocationDataCopyWith(
          LocationData value, $Res Function(LocationData) then) =
      _$LocationDataCopyWithImpl<$Res, LocationData>;
  @useResult
  $Res call({double lat, double lon});
}

/// @nodoc
class _$LocationDataCopyWithImpl<$Res, $Val extends LocationData>
    implements $LocationDataCopyWith<$Res> {
  _$LocationDataCopyWithImpl(this._value, this._then);

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
abstract class _$$LocationData$ImplCopyWith<$Res>
    implements $LocationDataCopyWith<$Res> {
  factory _$$LocationData$ImplCopyWith(
          _$LocationData$Impl value, $Res Function(_$LocationData$Impl) then) =
      __$$LocationData$ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double lat, double lon});
}

/// @nodoc
class __$$LocationData$ImplCopyWithImpl<$Res>
    extends _$LocationDataCopyWithImpl<$Res, _$LocationData$Impl>
    implements _$$LocationData$ImplCopyWith<$Res> {
  __$$LocationData$ImplCopyWithImpl(
      _$LocationData$Impl _value, $Res Function(_$LocationData$Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? lon = null,
  }) {
    return _then(_$LocationData$Impl(
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
class _$LocationData$Impl implements LocationData$ {
  const _$LocationData$Impl({required this.lat, required this.lon});

  factory _$LocationData$Impl.fromJson(Map<String, dynamic> json) =>
      _$$LocationData$ImplFromJson(json);

  @override
  final double lat;
  @override
  final double lon;

  @override
  String toString() {
    return 'LocationData(lat: $lat, lon: $lon)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationData$Impl &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lon, lon) || other.lon == lon));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, lat, lon);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationData$ImplCopyWith<_$LocationData$Impl> get copyWith =>
      __$$LocationData$ImplCopyWithImpl<_$LocationData$Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationData$ImplToJson(
      this,
    );
  }
}

abstract class LocationData$ implements LocationData {
  const factory LocationData$(
      {required final double lat,
      required final double lon}) = _$LocationData$Impl;

  factory LocationData$.fromJson(Map<String, dynamic> json) =
      _$LocationData$Impl.fromJson;

  @override
  double get lat;
  @override
  double get lon;
  @override
  @JsonKey(ignore: true)
  _$$LocationData$ImplCopyWith<_$LocationData$Impl> get copyWith =>
      throw _privateConstructorUsedError;
}
