// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forecast_element.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ForecastElement _$ForecastElementFromJson(Map<String, dynamic> json) {
  return ForecastElement$.fromJson(json);
}

/// @nodoc
mixin _$ForecastElement {
  int get dt => throw _privateConstructorUsedError;
  Main get main => throw _privateConstructorUsedError;
  List<Weather> get weather => throw _privateConstructorUsedError;
  Clouds get clouds => throw _privateConstructorUsedError;
  Wind? get wind => throw _privateConstructorUsedError;
  int get visibility => throw _privateConstructorUsedError;
  double get pop => throw _privateConstructorUsedError;
  Rain? get rain => throw _privateConstructorUsedError;
  Snow? get snow => throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: 'dt_txt')
  String get dtTxt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ForecastElementCopyWith<ForecastElement> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForecastElementCopyWith<$Res> {
  factory $ForecastElementCopyWith(ForecastElement value, $Res Function(ForecastElement) then) =
      _$ForecastElementCopyWithImpl<$Res, ForecastElement>;
  @useResult
  $Res call(
      {int dt,
      Main main,
      List<Weather> weather,
      Clouds clouds,
      Wind? wind,
      int visibility,
      double pop,
      Rain? rain,
      Snow? snow,
      @JsonKey(name: 'dt_txt') String dtTxt});

  $MainCopyWith<$Res> get main;
  $CloudsCopyWith<$Res> get clouds;
  $WindCopyWith<$Res>? get wind;
  $RainCopyWith<$Res>? get rain;
  $SnowCopyWith<$Res>? get snow;
}

/// @nodoc
class _$ForecastElementCopyWithImpl<$Res, $Val extends ForecastElement> implements $ForecastElementCopyWith<$Res> {
  _$ForecastElementCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dt = null,
    Object? main = null,
    Object? weather = null,
    Object? clouds = null,
    Object? wind = freezed,
    Object? visibility = null,
    Object? pop = null,
    Object? rain = freezed,
    Object? snow = freezed,
    Object? dtTxt = null,
  }) {
    return _then(_value.copyWith(
      dt: null == dt
          ? _value.dt
          : dt // ignore: cast_nullable_to_non_nullable
              as int,
      main: null == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as Main,
      weather: null == weather
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<Weather>,
      clouds: null == clouds
          ? _value.clouds
          : clouds // ignore: cast_nullable_to_non_nullable
              as Clouds,
      wind: freezed == wind
          ? _value.wind
          : wind // ignore: cast_nullable_to_non_nullable
              as Wind?,
      visibility: null == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as int,
      pop: null == pop
          ? _value.pop
          : pop // ignore: cast_nullable_to_non_nullable
              as double,
      rain: freezed == rain
          ? _value.rain
          : rain // ignore: cast_nullable_to_non_nullable
              as Rain?,
      snow: freezed == snow
          ? _value.snow
          : snow // ignore: cast_nullable_to_non_nullable
              as Snow?,
      dtTxt: null == dtTxt
          ? _value.dtTxt
          : dtTxt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
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
  $CloudsCopyWith<$Res> get clouds {
    return $CloudsCopyWith<$Res>(_value.clouds, (value) {
      return _then(_value.copyWith(clouds: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $WindCopyWith<$Res>? get wind {
    if (_value.wind == null) {
      return null;
    }

    return $WindCopyWith<$Res>(_value.wind!, (value) {
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
}

/// @nodoc
abstract class _$$ForecastElement$ImplCopyWith<$Res> implements $ForecastElementCopyWith<$Res> {
  factory _$$ForecastElement$ImplCopyWith(_$ForecastElement$Impl value, $Res Function(_$ForecastElement$Impl) then) =
      __$$ForecastElement$ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int dt,
      Main main,
      List<Weather> weather,
      Clouds clouds,
      Wind? wind,
      int visibility,
      double pop,
      Rain? rain,
      Snow? snow,
      @JsonKey(name: 'dt_txt') String dtTxt});

  @override
  $MainCopyWith<$Res> get main;
  @override
  $CloudsCopyWith<$Res> get clouds;
  @override
  $WindCopyWith<$Res>? get wind;
  @override
  $RainCopyWith<$Res>? get rain;
  @override
  $SnowCopyWith<$Res>? get snow;
}

/// @nodoc
class __$$ForecastElement$ImplCopyWithImpl<$Res> extends _$ForecastElementCopyWithImpl<$Res, _$ForecastElement$Impl>
    implements _$$ForecastElement$ImplCopyWith<$Res> {
  __$$ForecastElement$ImplCopyWithImpl(_$ForecastElement$Impl _value, $Res Function(_$ForecastElement$Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dt = null,
    Object? main = null,
    Object? weather = null,
    Object? clouds = null,
    Object? wind = freezed,
    Object? visibility = null,
    Object? pop = null,
    Object? rain = freezed,
    Object? snow = freezed,
    Object? dtTxt = null,
  }) {
    return _then(_$ForecastElement$Impl(
      dt: null == dt
          ? _value.dt
          : dt // ignore: cast_nullable_to_non_nullable
              as int,
      main: null == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as Main,
      weather: null == weather
          ? _value._weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<Weather>,
      clouds: null == clouds
          ? _value.clouds
          : clouds // ignore: cast_nullable_to_non_nullable
              as Clouds,
      wind: freezed == wind
          ? _value.wind
          : wind // ignore: cast_nullable_to_non_nullable
              as Wind?,
      visibility: null == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as int,
      pop: null == pop
          ? _value.pop
          : pop // ignore: cast_nullable_to_non_nullable
              as double,
      rain: freezed == rain
          ? _value.rain
          : rain // ignore: cast_nullable_to_non_nullable
              as Rain?,
      snow: freezed == snow
          ? _value.snow
          : snow // ignore: cast_nullable_to_non_nullable
              as Snow?,
      dtTxt: null == dtTxt
          ? _value.dtTxt
          : dtTxt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ForecastElement$Impl implements ForecastElement$ {
  const _$ForecastElement$Impl(
      {this.dt = 0,
      required this.main,
      final List<Weather> weather = const <Weather>[],
      required this.clouds,
      this.wind,
      this.visibility = 0,
      this.pop = 0,
      this.rain,
      this.snow,
      @JsonKey(name: 'dt_txt') this.dtTxt = ''})
      : _weather = weather;

  factory _$ForecastElement$Impl.fromJson(Map<String, dynamic> json) => _$$ForecastElement$ImplFromJson(json);

  @override
  @JsonKey()
  final int dt;
  @override
  final Main main;
  final List<Weather> _weather;
  @override
  @JsonKey()
  List<Weather> get weather {
    if (_weather is EqualUnmodifiableListView) return _weather;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weather);
  }

  @override
  final Clouds clouds;
  @override
  final Wind? wind;
  @override
  @JsonKey()
  final int visibility;
  @override
  @JsonKey()
  final double pop;
  @override
  final Rain? rain;
  @override
  final Snow? snow;
// ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'dt_txt')
  final String dtTxt;

  @override
  String toString() {
    return 'ForecastElement(dt: $dt, main: $main, weather: $weather, clouds: $clouds, wind: $wind, visibility: $visibility, pop: $pop, rain: $rain, snow: $snow, dtTxt: $dtTxt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForecastElement$Impl &&
            (identical(other.dt, dt) || other.dt == dt) &&
            (identical(other.main, main) || other.main == main) &&
            const DeepCollectionEquality().equals(other._weather, _weather) &&
            (identical(other.clouds, clouds) || other.clouds == clouds) &&
            (identical(other.wind, wind) || other.wind == wind) &&
            (identical(other.visibility, visibility) || other.visibility == visibility) &&
            (identical(other.pop, pop) || other.pop == pop) &&
            (identical(other.rain, rain) || other.rain == rain) &&
            (identical(other.snow, snow) || other.snow == snow) &&
            (identical(other.dtTxt, dtTxt) || other.dtTxt == dtTxt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, dt, main, const DeepCollectionEquality().hash(_weather), clouds, wind,
      visibility, pop, rain, snow, dtTxt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ForecastElement$ImplCopyWith<_$ForecastElement$Impl> get copyWith =>
      __$$ForecastElement$ImplCopyWithImpl<_$ForecastElement$Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ForecastElement$ImplToJson(
      this,
    );
  }
}

abstract class ForecastElement$ implements ForecastElement {
  const factory ForecastElement$(
      {final int dt,
      required final Main main,
      final List<Weather> weather,
      required final Clouds clouds,
      final Wind? wind,
      final int visibility,
      final double pop,
      final Rain? rain,
      final Snow? snow,
      @JsonKey(name: 'dt_txt') final String dtTxt}) = _$ForecastElement$Impl;

  factory ForecastElement$.fromJson(Map<String, dynamic> json) = _$ForecastElement$Impl.fromJson;

  @override
  int get dt;
  @override
  Main get main;
  @override
  List<Weather> get weather;
  @override
  Clouds get clouds;
  @override
  Wind? get wind;
  @override
  int get visibility;
  @override
  double get pop;
  @override
  Rain? get rain;
  @override
  Snow? get snow;
  @override // ignore: invalid_annotation_target
  @JsonKey(name: 'dt_txt')
  String get dtTxt;
  @override
  @JsonKey(ignore: true)
  _$$ForecastElement$ImplCopyWith<_$ForecastElement$Impl> get copyWith => throw _privateConstructorUsedError;
}
