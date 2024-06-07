import 'package:freezed_annotation/freezed_annotation.dart';

import 'clouds.dart';
import 'coord.dart';
import 'main.dart';
import 'rain.dart';
import 'snow.dart';
import 'sys.dart';
import 'weather.dart';
import 'wind.dart';

part 'current_weather.freezed.dart';
part 'current_weather.g.dart';

@freezed
class CurrentWeather with _$CurrentWeather {
  const factory CurrentWeather({
    required Coord coord,
    @Default(<Weather>[]) List<Weather> weather,
    required Main main,
    @Default(0) int visibility,
    required Wind wind,
    Rain? rain,
    Snow? snow,
    required Clouds clouds,
    @Default(0) int dt,
    required Sys sys,
    @Default(0) int timezone,
    @Default(0) int id,
    @Default('') String name,
  }) = CurrentWeather$;

  factory CurrentWeather.fromJson(Map<String, dynamic> json) =>
      _$CurrentWeatherFromJson(Map<String, dynamic>.from(json));
}
