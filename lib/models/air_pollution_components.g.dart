// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'air_pollution_components.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AirPollutionComponents$Impl _$$AirPollutionComponents$ImplFromJson(
        Map<String, dynamic> json) =>
    _$AirPollutionComponents$Impl(
      co: (json['co'] as num?)?.toDouble() ?? 0,
      no: (json['no'] as num?)?.toDouble() ?? 0,
      no2: (json['no2'] as num?)?.toDouble() ?? 0,
      o3: (json['o3'] as num?)?.toDouble() ?? 0,
      so2: (json['so2'] as num?)?.toDouble() ?? 0,
      pm2_5: (json['pm2_5'] as num?)?.toDouble() ?? 0,
      pm10: (json['pm10'] as num?)?.toDouble() ?? 0,
      nh3: (json['nh3'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$$AirPollutionComponents$ImplToJson(
        _$AirPollutionComponents$Impl instance) =>
    <String, dynamic>{
      'co': instance.co,
      'no': instance.no,
      'no2': instance.no2,
      'o3': instance.o3,
      'so2': instance.so2,
      'pm2_5': instance.pm2_5,
      'pm10': instance.pm10,
      'nh3': instance.nh3,
    };
