import 'package:freezed_annotation/freezed_annotation.dart';
import '../actions/app_action.dart';
import '../models/current_weather.dart';

part 'get_weather.freezed.dart';

@freezed
class GetWeather with _$GetWeather implements AppAction {
  const factory GetWeather() = GetWeatherStart;

  const factory GetWeather.successful(CurrentWeather currentWeather) = GetWeatherSuccessful;

  @Implements<ErrorAction>()
  const factory GetWeather.error(Object error, StackTrace stackTrace) = GetWeatherError;
}
