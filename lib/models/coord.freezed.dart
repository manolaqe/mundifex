// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coord.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Coord _$CoordFromJson(Map<String, dynamic> json) {
  return Coord$.fromJson(json);
}

/// @nodoc
mixin _$Coord {
  double get lon => throw _privateConstructorUsedError;
  double get lat => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoordCopyWith<Coord> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoordCopyWith<$Res> {
  factory $CoordCopyWith(Coord value, $Res Function(Coord) then) =
      _$CoordCopyWithImpl<$Res, Coord>;
  @useResult
  $Res call({double lon, double lat});
}

/// @nodoc
class _$CoordCopyWithImpl<$Res, $Val extends Coord>
    implements $CoordCopyWith<$Res> {
  _$CoordCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lon = null,
    Object? lat = null,
  }) {
    return _then(_value.copyWith(
      lon: null == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$Coord$ImplCopyWith<$Res> implements $CoordCopyWith<$Res> {
  factory _$$Coord$ImplCopyWith(
          _$Coord$Impl value, $Res Function(_$Coord$Impl) then) =
      __$$Coord$ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double lon, double lat});
}

/// @nodoc
class __$$Coord$ImplCopyWithImpl<$Res>
    extends _$CoordCopyWithImpl<$Res, _$Coord$Impl>
    implements _$$Coord$ImplCopyWith<$Res> {
  __$$Coord$ImplCopyWithImpl(
      _$Coord$Impl _value, $Res Function(_$Coord$Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lon = null,
    Object? lat = null,
  }) {
    return _then(_$Coord$Impl(
      lon: null == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Coord$Impl implements Coord$ {
  const _$Coord$Impl({this.lon = 0, this.lat = 0});

  factory _$Coord$Impl.fromJson(Map<String, dynamic> json) =>
      _$$Coord$ImplFromJson(json);

  @override
  @JsonKey()
  final double lon;
  @override
  @JsonKey()
  final double lat;

  @override
  String toString() {
    return 'Coord(lon: $lon, lat: $lat)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Coord$Impl &&
            (identical(other.lon, lon) || other.lon == lon) &&
            (identical(other.lat, lat) || other.lat == lat));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, lon, lat);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$Coord$ImplCopyWith<_$Coord$Impl> get copyWith =>
      __$$Coord$ImplCopyWithImpl<_$Coord$Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Coord$ImplToJson(
      this,
    );
  }
}

abstract class Coord$ implements Coord {
  const factory Coord$({final double lon, final double lat}) = _$Coord$Impl;

  factory Coord$.fromJson(Map<String, dynamic> json) = _$Coord$Impl.fromJson;

  @override
  double get lon;
  @override
  double get lat;
  @override
  @JsonKey(ignore: true)
  _$$Coord$ImplCopyWith<_$Coord$Impl> get copyWith =>
      throw _privateConstructorUsedError;
}
