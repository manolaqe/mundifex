import 'package:freezed_annotation/freezed_annotation.dart';

import '../models/air_pollution_data.dart';
import 'app_action.dart';

part 'get_air_pollution.freezed.dart';

@freezed
class GetAirPollution with _$GetAirPollution implements AppAction {
  const factory GetAirPollution() = GetAirPollutionStart;

  const factory GetAirPollution.successful(AirPollutionData airPollutionData) = GetAirPollutionSuccessful;

  @Implements<ErrorAction>()
  const factory GetAirPollution.error(Object error, StackTrace stackTrace) = GetAirPollutionError;
}
