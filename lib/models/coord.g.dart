// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coord.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$Coord$Impl _$$Coord$ImplFromJson(Map<String, dynamic> json) => _$Coord$Impl(
      lon: (json['lon'] as num?)?.toDouble() ?? 0,
      lat: (json['lat'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$$Coord$ImplToJson(_$Coord$Impl instance) =>
    <String, dynamic>{
      'lon': instance.lon,
      'lat': instance.lat,
    };
