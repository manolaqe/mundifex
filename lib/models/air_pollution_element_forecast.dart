import 'package:freezed_annotation/freezed_annotation.dart';
import 'air_pollution_components.dart';
import 'main_pollution.dart';

part 'air_pollution_element_forecast.freezed.dart';
part 'air_pollution_element_forecast.g.dart';

@freezed
class AirPollutionElementForecast with _$AirPollutionElementForecast {
  const factory AirPollutionElementForecast({
    required MainPollution main,
    required AirPollutionComponents components,
    @Default(0) int dt,
  }) = AirPollutionElementForecast$;

  factory AirPollutionElementForecast.fromJson(Map<String, dynamic> json) =>
      _$AirPollutionElementForecastFromJson(Map<String, dynamic>.from(json));
}
