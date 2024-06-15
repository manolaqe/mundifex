// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'current_weather.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CurrentWeather _$CurrentWeatherFromJson(Map<String, dynamic> json) {
  return CurrentWeather$.fromJson(json);
}

/// @nodoc
mixin _$CurrentWeather {
  Coord get coord => throw _privateConstructorUsedError;
  List<Weather> get weather => throw _privateConstructorUsedError;
  Main get main => throw _privateConstructorUsedError;
  int get visibility => throw _privateConstructorUsedError;
  Wind get wind => throw _privateConstructorUsedError;
  Rain? get rain => throw _privateConstructorUsedError;
  Snow? get snow => throw _privateConstructorUsedError;
  Clouds get clouds => throw _privateConstructorUsedError;
  int get dt => throw _privateConstructorUsedError;
  Sys get sys => throw _privateConstructorUsedError;
  int get timezone => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrentWeatherCopyWith<CurrentWeather> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentWeatherCopyWith<$Res> {
  factory $CurrentWeatherCopyWith(CurrentWeather value, $Res Function(CurrentWeather) then) =
      _$CurrentWeatherCopyWithImpl<$Res, CurrentWeather>;
  @useResult
  $Res call(
      {Coord coord,
      List<Weather> weather,
      Main main,
      int visibility,
      Wind wind,
      Rain? rain,
      Snow? snow,
      Clouds clouds,
      int dt,
      Sys sys,
      int timezone,
      int id,
      String name});

  $CoordCopyWith<$Res> get coord;
  $MainCopyWith<$Res> get main;
  $WindCopyWith<$Res> get wind;
  $RainCopyWith<$Res>? get rain;
  $SnowCopyWith<$Res>? get snow;
  $CloudsCopyWith<$Res> get clouds;
  $SysCopyWith<$Res> get sys;
}

/// @nodoc
class _$CurrentWeatherCopyWithImpl<$Res, $Val extends CurrentWeather> implements $CurrentWeatherCopyWith<$Res> {
  _$CurrentWeatherCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coord = null,
    Object? weather = null,
    Object? main = null,
    Object? visibility = null,
    Object? wind = null,
    Object? rain = freezed,
    Object? snow = freezed,
    Object? clouds = null,
    Object? dt = null,
    Object? sys = null,
    Object? timezone = null,
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      coord: null == coord
          ? _value.coord
          : coord // ignore: cast_nullable_to_non_nullable
              as Coord,
      weather: null == weather
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<Weather>,
      main: null == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as Main,
      visibility: null == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as int,
      wind: null == wind
          ? _value.wind
          : wind // ignore: cast_nullable_to_non_nullable
              as Wind,
      rain: freezed == rain
          ? _value.rain
          : rain // ignore: cast_nullable_to_non_nullable
              as Rain?,
      snow: freezed == snow
          ? _value.snow
          : snow // ignore: cast_nullable_to_non_nullable
              as Snow?,
      clouds: null == clouds
          ? _value.clouds
          : clouds // ignore: cast_nullable_to_non_nullable
              as Clouds,
      dt: null == dt
          ? _value.dt
          : dt // ignore: cast_nullable_to_non_nullable
              as int,
      sys: null == sys
          ? _value.sys
          : sys // ignore: cast_nullable_to_non_nullable
              as Sys,
      timezone: null == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CoordCopyWith<$Res> get coord {
    return $CoordCopyWith<$Res>(_value.coord, (value) {
      return _then(_value.copyWith(coord: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MainCopyWith<$Res> get main {
    return $MainCopyWith<$Res>(_value.main, (value) {
      return _then(_value.copyWith(main: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $WindCopyWith<$Res> get wind {
    return $WindCopyWith<$Res>(_value.wind, (value) {
      return _then(_value.copyWith(wind: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RainCopyWith<$Res>? get rain {
    if (_value.rain == null) {
      return null;
    }

    return $RainCopyWith<$Res>(_value.rain!, (value) {
      return _then(_value.copyWith(rain: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SnowCopyWith<$Res>? get snow {
    if (_value.snow == null) {
      return null;
    }

    return $SnowCopyWith<$Res>(_value.snow!, (value) {
      return _then(_value.copyWith(snow: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CloudsCopyWith<$Res> get clouds {
    return $CloudsCopyWith<$Res>(_value.clouds, (value) {
      return _then(_value.copyWith(clouds: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SysCopyWith<$Res> get sys {
    return $SysCopyWith<$Res>(_value.sys, (value) {
      return _then(_value.copyWith(sys: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CurrentWeather$ImplCopyWith<$Res> implements $CurrentWeatherCopyWith<$Res> {
  factory _$$CurrentWeather$ImplCopyWith(_$CurrentWeather$Impl value, $Res Function(_$CurrentWeather$Impl) then) =
      __$$CurrentWeather$ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Coord coord,
      List<Weather> weather,
      Main main,
      int visibility,
      Wind wind,
      Rain? rain,
      Snow? snow,
      Clouds clouds,
      int dt,
      Sys sys,
      int timezone,
      int id,
      String name});

  @override
  $CoordCopyWith<$Res> get coord;
  @override
  $MainCopyWith<$Res> get main;
  @override
  $WindCopyWith<$Res> get wind;
  @override
  $RainCopyWith<$Res>? get rain;
  @override
  $SnowCopyWith<$Res>? get snow;
  @override
  $CloudsCopyWith<$Res> get clouds;
  @override
  $SysCopyWith<$Res> get sys;
}

/// @nodoc
class __$$CurrentWeather$ImplCopyWithImpl<$Res> extends _$CurrentWeatherCopyWithImpl<$Res, _$CurrentWeather$Impl>
    implements _$$CurrentWeather$ImplCopyWith<$Res> {
  __$$CurrentWeather$ImplCopyWithImpl(_$CurrentWeather$Impl _value, $Res Function(_$CurrentWeather$Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coord = null,
    Object? weather = null,
    Object? main = null,
    Object? visibility = null,
    Object? wind = null,
    Object? rain = freezed,
    Object? snow = freezed,
    Object? clouds = null,
    Object? dt = null,
    Object? sys = null,
    Object? timezone = null,
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$CurrentWeather$Impl(
      coord: null == coord
          ? _value.coord
          : coord // ignore: cast_nullable_to_non_nullable
              as Coord,
      weather: null == weather
          ? _value._weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<Weather>,
      main: null == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as Main,
      visibility: null == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as int,
      wind: null == wind
          ? _value.wind
          : wind // ignore: cast_nullable_to_non_nullable
              as Wind,
      rain: freezed == rain
          ? _value.rain
          : rain // ignore: cast_nullable_to_non_nullable
              as Rain?,
      snow: freezed == snow
          ? _value.snow
          : snow // ignore: cast_nullable_to_non_nullable
              as Snow?,
      clouds: null == clouds
          ? _value.clouds
          : clouds // ignore: cast_nullable_to_non_nullable
              as Clouds,
      dt: null == dt
          ? _value.dt
          : dt // ignore: cast_nullable_to_non_nullable
              as int,
      sys: null == sys
          ? _value.sys
          : sys // ignore: cast_nullable_to_non_nullable
              as Sys,
      timezone: null == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CurrentWeather$Impl implements CurrentWeather$ {
  const _$CurrentWeather$Impl(
      {required this.coord,
      final List<Weather> weather = const <Weather>[],
      required this.main,
      this.visibility = 0,
      required this.wind,
      this.rain,
      this.snow,
      required this.clouds,
      this.dt = 0,
      required this.sys,
      this.timezone = 0,
      this.id = 0,
      this.name = ''})
      : _weather = weather;

  factory _$CurrentWeather$Impl.fromJson(Map<String, dynamic> json) => _$$CurrentWeather$ImplFromJson(json);

  @override
  final Coord coord;
  final List<Weather> _weather;
  @override
  @JsonKey()
  List<Weather> get weather {
    if (_weather is EqualUnmodifiableListView) return _weather;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weather);
  }

  @override
  final Main main;
  @override
  @JsonKey()
  final int visibility;
  @override
  final Wind wind;
  @override
  final Rain? rain;
  @override
  final Snow? snow;
  @override
  final Clouds clouds;
  @override
  @JsonKey()
  final int dt;
  @override
  final Sys sys;
  @override
  @JsonKey()
  final int timezone;
  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String name;

  @override
  String toString() {
    return 'CurrentWeather(coord: $coord, weather: $weather, main: $main, visibility: $visibility, wind: $wind, rain: $rain, snow: $snow, clouds: $clouds, dt: $dt, sys: $sys, timezone: $timezone, id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrentWeather$Impl &&
            (identical(other.coord, coord) || other.coord == coord) &&
            const DeepCollectionEquality().equals(other._weather, _weather) &&
            (identical(other.main, main) || other.main == main) &&
            (identical(other.visibility, visibility) || other.visibility == visibility) &&
            (identical(other.wind, wind) || other.wind == wind) &&
            (identical(other.rain, rain) || other.rain == rain) &&
            (identical(other.snow, snow) || other.snow == snow) &&
            (identical(other.clouds, clouds) || other.clouds == clouds) &&
            (identical(other.dt, dt) || other.dt == dt) &&
            (identical(other.sys, sys) || other.sys == sys) &&
            (identical(other.timezone, timezone) || other.timezone == timezone) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, coord, const DeepCollectionEquality().hash(_weather), main, visibility,
      wind, rain, snow, clouds, dt, sys, timezone, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrentWeather$ImplCopyWith<_$CurrentWeather$Impl> get copyWith =>
      __$$CurrentWeather$ImplCopyWithImpl<_$CurrentWeather$Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CurrentWeather$ImplToJson(
      this,
    );
  }
}

abstract class CurrentWeather$ implements CurrentWeather {
  const factory CurrentWeather$(
      {required final Coord coord,
      final List<Weather> weather,
      required final Main main,
      final int visibility,
      required final Wind wind,
      final Rain? rain,
      final Snow? snow,
      required final Clouds clouds,
      final int dt,
      required final Sys sys,
      final int timezone,
      final int id,
      final String name}) = _$CurrentWeather$Impl;

  factory CurrentWeather$.fromJson(Map<String, dynamic> json) = _$CurrentWeather$Impl.fromJson;

  @override
  Coord get coord;
  @override
  List<Weather> get weather;
  @override
  Main get main;
  @override
  int get visibility;
  @override
  Wind get wind;
  @override
  Rain? get rain;
  @override
  Snow? get snow;
  @override
  Clouds get clouds;
  @override
  int get dt;
  @override
  Sys get sys;
  @override
  int get timezone;
  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$CurrentWeather$ImplCopyWith<_$CurrentWeather$Impl> get copyWith => throw _privateConstructorUsedError;
}
