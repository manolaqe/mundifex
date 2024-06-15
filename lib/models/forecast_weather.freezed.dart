// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forecast_weather.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ForecastWeather _$ForecastWeatherFromJson(Map<String, dynamic> json) {
  return ForecastWeather$.fromJson(json);
}

/// @nodoc
mixin _$ForecastWeather {
  String get cod => throw _privateConstructorUsedError;
  int get message => throw _privateConstructorUsedError;
  int get cnt => throw _privateConstructorUsedError;
  List<ForecastElement> get list => throw _privateConstructorUsedError;
  City get city => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ForecastWeatherCopyWith<ForecastWeather> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForecastWeatherCopyWith<$Res> {
  factory $ForecastWeatherCopyWith(ForecastWeather value, $Res Function(ForecastWeather) then) =
      _$ForecastWeatherCopyWithImpl<$Res, ForecastWeather>;
  @useResult
  $Res call({String cod, int message, int cnt, List<ForecastElement> list, City city});

  $CityCopyWith<$Res> get city;
}

/// @nodoc
class _$ForecastWeatherCopyWithImpl<$Res, $Val extends ForecastWeather> implements $ForecastWeatherCopyWith<$Res> {
  _$ForecastWeatherCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cod = null,
    Object? message = null,
    Object? cnt = null,
    Object? list = null,
    Object? city = null,
  }) {
    return _then(_value.copyWith(
      cod: null == cod
          ? _value.cod
          : cod // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as int,
      cnt: null == cnt
          ? _value.cnt
          : cnt // ignore: cast_nullable_to_non_nullable
              as int,
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<ForecastElement>,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as City,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CityCopyWith<$Res> get city {
    return $CityCopyWith<$Res>(_value.city, (value) {
      return _then(_value.copyWith(city: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ForecastWeather$ImplCopyWith<$Res> implements $ForecastWeatherCopyWith<$Res> {
  factory _$$ForecastWeather$ImplCopyWith(_$ForecastWeather$Impl value, $Res Function(_$ForecastWeather$Impl) then) =
      __$$ForecastWeather$ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String cod, int message, int cnt, List<ForecastElement> list, City city});

  @override
  $CityCopyWith<$Res> get city;
}

/// @nodoc
class __$$ForecastWeather$ImplCopyWithImpl<$Res> extends _$ForecastWeatherCopyWithImpl<$Res, _$ForecastWeather$Impl>
    implements _$$ForecastWeather$ImplCopyWith<$Res> {
  __$$ForecastWeather$ImplCopyWithImpl(_$ForecastWeather$Impl _value, $Res Function(_$ForecastWeather$Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cod = null,
    Object? message = null,
    Object? cnt = null,
    Object? list = null,
    Object? city = null,
  }) {
    return _then(_$ForecastWeather$Impl(
      cod: null == cod
          ? _value.cod
          : cod // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as int,
      cnt: null == cnt
          ? _value.cnt
          : cnt // ignore: cast_nullable_to_non_nullable
              as int,
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<ForecastElement>,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as City,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ForecastWeather$Impl implements ForecastWeather$ {
  const _$ForecastWeather$Impl(
      {this.cod = '',
      this.message = 0,
      this.cnt = 0,
      final List<ForecastElement> list = const <ForecastElement>[],
      required this.city})
      : _list = list;

  factory _$ForecastWeather$Impl.fromJson(Map<String, dynamic> json) => _$$ForecastWeather$ImplFromJson(json);

  @override
  @JsonKey()
  final String cod;
  @override
  @JsonKey()
  final int message;
  @override
  @JsonKey()
  final int cnt;
  final List<ForecastElement> _list;
  @override
  @JsonKey()
  List<ForecastElement> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  final City city;

  @override
  String toString() {
    return 'ForecastWeather(cod: $cod, message: $message, cnt: $cnt, list: $list, city: $city)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForecastWeather$Impl &&
            (identical(other.cod, cod) || other.cod == cod) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.cnt, cnt) || other.cnt == cnt) &&
            const DeepCollectionEquality().equals(other._list, _list) &&
            (identical(other.city, city) || other.city == city));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, cod, message, cnt, const DeepCollectionEquality().hash(_list), city);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ForecastWeather$ImplCopyWith<_$ForecastWeather$Impl> get copyWith =>
      __$$ForecastWeather$ImplCopyWithImpl<_$ForecastWeather$Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ForecastWeather$ImplToJson(
      this,
    );
  }
}

abstract class ForecastWeather$ implements ForecastWeather {
  const factory ForecastWeather$(
      {final String cod,
      final int message,
      final int cnt,
      final List<ForecastElement> list,
      required final City city}) = _$ForecastWeather$Impl;

  factory ForecastWeather$.fromJson(Map<String, dynamic> json) = _$ForecastWeather$Impl.fromJson;

  @override
  String get cod;
  @override
  int get message;
  @override
  int get cnt;
  @override
  List<ForecastElement> get list;
  @override
  City get city;
  @override
  @JsonKey(ignore: true)
  _$$ForecastWeather$ImplCopyWith<_$ForecastWeather$Impl> get copyWith => throw _privateConstructorUsedError;
}
