import 'package:freezed_annotation/freezed_annotation.dart';

import '../models/air_pollution_data_forecast.dart';
import 'app_action.dart';

part 'get_air_pollution_forecast.freezed.dart';

@freezed
class GetAirPollutionForecast with _$GetAirPollutionForecast implements AppAction {
  const factory GetAirPollutionForecast() = GetAirPollutionForecastStart;

  const factory GetAirPollutionForecast.successful(AirPollutionDataForecast airPollutionDataForecast) =
      GetAirPollutionForecastSuccessful;

  @Implements<ErrorAction>()
  const factory GetAirPollutionForecast.error(Object error, StackTrace stackTrace) = GetAirPollutionForecastError;
}
