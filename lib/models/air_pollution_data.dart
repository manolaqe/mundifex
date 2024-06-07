import 'package:freezed_annotation/freezed_annotation.dart';
import 'air_pollution_element.dart';

import 'coord.dart';

part 'air_pollution_data.freezed.dart';
part 'air_pollution_data.g.dart';

@freezed
class AirPollutionData with _$AirPollutionData {
  const factory AirPollutionData({
    required Coord coord,
    @Default(<AirPollutionElement>[]) List<AirPollutionElement> list,
    @Default(0) int dt,
  }) = AirPollutionData$;

  factory AirPollutionData.fromJson(Map<String, dynamic> json) =>
      _$AirPollutionDataFromJson(Map<String, dynamic>.from(json));
}
