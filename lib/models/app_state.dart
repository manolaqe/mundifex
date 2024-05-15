import 'package:freezed_annotation/freezed_annotation.dart';
import './location_data.dart';
import 'app_user.dart';

part 'app_state.freezed.dart';
part 'app_state.g.dart';

@freezed
class AppState with _$AppState {
  const factory AppState({
    AppUser? user,
    @Default(<String, AppUser>{}) Map<String, AppUser> users,
    LocationData? locationData,
    Map<String, dynamic>? airQualityData,
    Map<String, dynamic>? airTrafficData,
  }) = AppState$;

  factory AppState.fromJson(Map<dynamic, dynamic> json) => _$AppStateFromJson(Map<String, dynamic>.from(json));
}
