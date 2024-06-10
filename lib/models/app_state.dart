import 'package:freezed_annotation/freezed_annotation.dart';
import './location_data.dart';
import 'address_data.dart';
import 'air_pollution_data.dart';
import 'app_user.dart';
import 'current_weather.dart';
import 'flow_segment_data.dart';
import 'water_quality_data.dart';

part 'app_state.freezed.dart';
part 'app_state.g.dart';

@freezed
class AppState with _$AppState {
  const factory AppState({
    AppUser? user,
    @Default(<String, AppUser>{}) Map<String, AppUser> users,
    LocationData? locationData,
    @Default(false) bool isLoading,
    AirPollutionData? airPollutionData,
    Map<String, dynamic>? airTrafficData,
    CurrentWeather? weatherData,
    AddressData? addressData,
    FlowSegmentData? flowSegmentData,
    List<WaterQualityData>? waterQualityData,
  }) = AppState$;

  factory AppState.fromJson(Map<dynamic, dynamic> json) => _$AppStateFromJson(Map<String, dynamic>.from(json));
}
