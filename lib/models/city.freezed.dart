// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'city.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

City _$CityFromJson(Map<String, dynamic> json) {
  return City$.fromJson(json);
}

/// @nodoc
mixin _$City {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  Coord get coord => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  int get population => throw _privateConstructorUsedError;
  int get timezone => throw _privateConstructorUsedError;
  int get sunrise => throw _privateConstructorUsedError;
  int get sunset => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CityCopyWith<City> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CityCopyWith<$Res> {
  factory $CityCopyWith(City value, $Res Function(City) then) =
      _$CityCopyWithImpl<$Res, City>;
  @useResult
  $Res call(
      {int id,
      String name,
      Coord coord,
      String country,
      int population,
      int timezone,
      int sunrise,
      int sunset});

  $CoordCopyWith<$Res> get coord;
}

/// @nodoc
class _$CityCopyWithImpl<$Res, $Val extends City>
    implements $CityCopyWith<$Res> {
  _$CityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? coord = null,
    Object? country = null,
    Object? population = null,
    Object? timezone = null,
    Object? sunrise = null,
    Object? sunset = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      coord: null == coord
          ? _value.coord
          : coord // ignore: cast_nullable_to_non_nullable
              as Coord,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      population: null == population
          ? _value.population
          : population // ignore: cast_nullable_to_non_nullable
              as int,
      timezone: null == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as int,
      sunrise: null == sunrise
          ? _value.sunrise
          : sunrise // ignore: cast_nullable_to_non_nullable
              as int,
      sunset: null == sunset
          ? _value.sunset
          : sunset // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CoordCopyWith<$Res> get coord {
    return $CoordCopyWith<$Res>(_value.coord, (value) {
      return _then(_value.copyWith(coord: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$City$ImplCopyWith<$Res> implements $CityCopyWith<$Res> {
  factory _$$City$ImplCopyWith(
          _$City$Impl value, $Res Function(_$City$Impl) then) =
      __$$City$ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      Coord coord,
      String country,
      int population,
      int timezone,
      int sunrise,
      int sunset});

  @override
  $CoordCopyWith<$Res> get coord;
}

/// @nodoc
class __$$City$ImplCopyWithImpl<$Res>
    extends _$CityCopyWithImpl<$Res, _$City$Impl>
    implements _$$City$ImplCopyWith<$Res> {
  __$$City$ImplCopyWithImpl(
      _$City$Impl _value, $Res Function(_$City$Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? coord = null,
    Object? country = null,
    Object? population = null,
    Object? timezone = null,
    Object? sunrise = null,
    Object? sunset = null,
  }) {
    return _then(_$City$Impl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      coord: null == coord
          ? _value.coord
          : coord // ignore: cast_nullable_to_non_nullable
              as Coord,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      population: null == population
          ? _value.population
          : population // ignore: cast_nullable_to_non_nullable
              as int,
      timezone: null == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as int,
      sunrise: null == sunrise
          ? _value.sunrise
          : sunrise // ignore: cast_nullable_to_non_nullable
              as int,
      sunset: null == sunset
          ? _value.sunset
          : sunset // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$City$Impl implements City$ {
  const _$City$Impl(
      {this.id = 0,
      this.name = '',
      required this.coord,
      this.country = '',
      this.population = 0,
      this.timezone = 0,
      this.sunrise = 0,
      this.sunset = 0});

  factory _$City$Impl.fromJson(Map<String, dynamic> json) =>
      _$$City$ImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String name;
  @override
  final Coord coord;
  @override
  @JsonKey()
  final String country;
  @override
  @JsonKey()
  final int population;
  @override
  @JsonKey()
  final int timezone;
  @override
  @JsonKey()
  final int sunrise;
  @override
  @JsonKey()
  final int sunset;

  @override
  String toString() {
    return 'City(id: $id, name: $name, coord: $coord, country: $country, population: $population, timezone: $timezone, sunrise: $sunrise, sunset: $sunset)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$City$Impl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.coord, coord) || other.coord == coord) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.population, population) ||
                other.population == population) &&
            (identical(other.timezone, timezone) ||
                other.timezone == timezone) &&
            (identical(other.sunrise, sunrise) || other.sunrise == sunrise) &&
            (identical(other.sunset, sunset) || other.sunset == sunset));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, coord, country,
      population, timezone, sunrise, sunset);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$City$ImplCopyWith<_$City$Impl> get copyWith =>
      __$$City$ImplCopyWithImpl<_$City$Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$City$ImplToJson(
      this,
    );
  }
}

abstract class City$ implements City {
  const factory City$(
      {final int id,
      final String name,
      required final Coord coord,
      final String country,
      final int population,
      final int timezone,
      final int sunrise,
      final int sunset}) = _$City$Impl;

  factory City$.fromJson(Map<String, dynamic> json) = _$City$Impl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  Coord get coord;
  @override
  String get country;
  @override
  int get population;
  @override
  int get timezone;
  @override
  int get sunrise;
  @override
  int get sunset;
  @override
  @JsonKey(ignore: true)
  _$$City$ImplCopyWith<_$City$Impl> get copyWith =>
      throw _privateConstructorUsedError;
}
