import 'package:freezed_annotation/freezed_annotation.dart';

import 'air_pollution_element_forecast.dart';
import 'coord.dart';

part 'air_pollution_data_forecast.freezed.dart';
part 'air_pollution_data_forecast.g.dart';

@freezed
class AirPollutionDataForecast with _$AirPollutionDataForecast {
  const factory AirPollutionDataForecast({
    required Coord coord,
    @Default(<AirPollutionElementForecast>[]) List<AirPollutionElementForecast> list,
  }) = AirPollutionDataForecast$;

  factory AirPollutionDataForecast.fromJson(Map<String, dynamic> json) =>
      _$AirPollutionDataForecastFromJson(Map<String, dynamic>.from(json));
}
