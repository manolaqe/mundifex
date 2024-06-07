import 'package:freezed_annotation/freezed_annotation.dart';
import './location_data.dart';
import 'app_user.dart';
import 'current_weather.dart';

part 'app_state.freezed.dart';
part 'app_state.g.dart';

@freezed
class AppState with _$AppState {
  const factory AppState({
    AppUser? user,
    @Default(<String, AppUser>{}) Map<String, AppUser> users,
    LocationData? locationData,
    @Default(false) bool isLoading,
    Map<String, dynamic>? airQualityData,
    Map<String, dynamic>? airTrafficData,
    CurrentWeather? weatherData,
    String? address,
  }) = AppState$;

  factory AppState.fromJson(Map<dynamic, dynamic> json) => _$AppStateFromJson(Map<String, dynamic>.from(json));
}
