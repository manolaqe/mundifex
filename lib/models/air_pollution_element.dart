import 'package:freezed_annotation/freezed_annotation.dart';
import 'air_pollution_components.dart';
import 'main_pollution.dart';

part 'air_pollution_element.freezed.dart';
part 'air_pollution_element.g.dart';

@freezed
class AirPollutionElement with _$AirPollutionElement {
  const factory AirPollutionElement({
    required MainPollution main,
    required AirPollutionComponents components,
  }) = AirPollutionElement$;

  factory AirPollutionElement.fromJson(Map<String, dynamic> json) =>
      _$AirPollutionElementFromJson(Map<String, dynamic>.from(json));
}
