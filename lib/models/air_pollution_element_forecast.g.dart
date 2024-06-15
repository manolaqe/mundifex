// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'air_pollution_element_forecast.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AirPollutionElementForecast$Impl _$$AirPollutionElementForecast$ImplFromJson(Map<String, dynamic> json) =>
    _$AirPollutionElementForecast$Impl(
      main: MainPollution.fromJson(json['main'] as Map<String, dynamic>),
      components: AirPollutionComponents.fromJson(json['components'] as Map<String, dynamic>),
      dt: (json['dt'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$AirPollutionElementForecast$ImplToJson(_$AirPollutionElementForecast$Impl instance) =>
    <String, dynamic>{
      'main': instance.main,
      'components': instance.components,
      'dt': instance.dt,
    };
