// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'air_pollution_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AirPollutionData$Impl _$$AirPollutionData$ImplFromJson(Map<String, dynamic> json) => _$AirPollutionData$Impl(
      coord: Coord.fromJson(json['coord'] as Map<String, dynamic>),
      list: (json['list'] as List<dynamic>?)
              ?.map((e) => AirPollutionElement.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <AirPollutionElement>[],
      dt: (json['dt'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$AirPollutionData$ImplToJson(_$AirPollutionData$Impl instance) => <String, dynamic>{
      'coord': instance.coord,
      'list': instance.list,
      'dt': instance.dt,
    };
