import 'package:freezed_annotation/freezed_annotation.dart';

import 'city.dart';
import 'forecast_element.dart';

part 'forecast_weather.freezed.dart';
part 'forecast_weather.g.dart';

@freezed
class ForecastWeather with _$ForecastWeather {
  const factory ForecastWeather({
    @Default('') String cod,
    @Default(0) int message,
    @Default(0) int cnt,
    @Default(<ForecastElement>[]) List<ForecastElement> list,
    required City city,
  }) = ForecastWeather$;

  factory ForecastWeather.fromJson(Map<String, dynamic> json) =>
      _$ForecastWeatherFromJson(Map<String, dynamic>.from(json));
}
