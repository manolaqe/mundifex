import 'package:freezed_annotation/freezed_annotation.dart';
import './location_data.dart';
import 'address_data.dart';
import 'air_pollution_data.dart';
import 'air_pollution_data_forecast.dart';
import 'app_user.dart';
import 'current_weather.dart';
import 'flow_segment_data.dart';
import 'forecast_weather.dart';
import 'post.dart';
import 'water_quality_data.dart';

part 'app_state.freezed.dart';
part 'app_state.g.dart';

@freezed
class AppState with _$AppState {
  const factory AppState({
    AppUser? user,
    String? selectedPostId,
    required Map<String, AppUser> users,
    LocationData? locationData,
    @Default(false) bool isLoading,
    AirPollutionData? airPollutionData,
    AirPollutionDataForecast? airPollutionDataForecast,
    Map<String, dynamic>? airTrafficData,
    CurrentWeather? weatherData,
    AddressData? addressData,
    FlowSegmentData? flowSegmentData,
    List<WaterQualityData>? waterQualityData,
    ForecastWeather? forecastWeather,
    required List<Post> posts,
  }) = AppState$;

  factory AppState.fromJson(Map<dynamic, dynamic> json) => _$AppStateFromJson(Map<String, dynamic>.from(json));
}
