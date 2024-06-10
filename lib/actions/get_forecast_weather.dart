import 'package:freezed_annotation/freezed_annotation.dart';

import '../models/forecast_weather.dart';
import 'app_action.dart';

part 'get_forecast_weather.freezed.dart';

@freezed
class GetForecastWeather with _$GetForecastWeather implements AppAction {
  const factory GetForecastWeather() = GetForecastWeatherStart;

  const factory GetForecastWeather.successful(ForecastWeather forecastWeather) = GetForecastWeatherSuccessful;

  @Implements<ErrorAction>()
  const factory GetForecastWeather.error(Object error, StackTrace stackTrace) = GetForecastWeatherError;
}
