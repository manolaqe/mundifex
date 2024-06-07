import 'package:freezed_annotation/freezed_annotation.dart';

part 'air_pollution_components.freezed.dart';
part 'air_pollution_components.g.dart';

@freezed
class AirPollutionComponents with _$AirPollutionComponents {
  const factory AirPollutionComponents({
    @Default(0) double co,
    @Default(0) double no,
    @Default(0) double no2,
    @Default(0) double o3,
    @Default(0) double so2,
    @Default(0) double pm2_5,
    @Default(0) double pm10,
    @Default(0) double nh3,
  }) = AirPollutionComponents$;

  factory AirPollutionComponents.fromJson(Map<String, dynamic> json) =>
      _$AirPollutionComponentsFromJson(Map<String, dynamic>.from(json));
}
