// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'air_pollution_data_forecast.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AirPollutionDataForecast$Impl _$$AirPollutionDataForecast$ImplFromJson(
        Map<String, dynamic> json) =>
    _$AirPollutionDataForecast$Impl(
      coord: Coord.fromJson(json['coord'] as Map<String, dynamic>),
      list: (json['list'] as List<dynamic>?)
              ?.map((e) => AirPollutionElementForecast.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          const <AirPollutionElementForecast>[],
    );

Map<String, dynamic> _$$AirPollutionDataForecast$ImplToJson(
        _$AirPollutionDataForecast$Impl instance) =>
    <String, dynamic>{
      'coord': instance.coord,
      'list': instance.list,
    };
