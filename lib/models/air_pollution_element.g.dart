// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'air_pollution_element.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AirPollutionElement$Impl _$$AirPollutionElement$ImplFromJson(Map<String, dynamic> json) => _$AirPollutionElement$Impl(
      main: MainPollution.fromJson(json['main'] as Map<String, dynamic>),
      components: AirPollutionComponents.fromJson(json['components'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AirPollutionElement$ImplToJson(_$AirPollutionElement$Impl instance) => <String, dynamic>{
      'main': instance.main,
      'components': instance.components,
    };
