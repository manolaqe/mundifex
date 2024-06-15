// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$City$Impl _$$City$ImplFromJson(Map<String, dynamic> json) => _$City$Impl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      name: json['name'] as String? ?? '',
      coord: Coord.fromJson(json['coord'] as Map<String, dynamic>),
      country: json['country'] as String? ?? '',
      population: (json['population'] as num?)?.toInt() ?? 0,
      timezone: (json['timezone'] as num?)?.toInt() ?? 0,
      sunrise: (json['sunrise'] as num?)?.toInt() ?? 0,
      sunset: (json['sunset'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$City$ImplToJson(_$City$Impl instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'coord': instance.coord,
      'country': instance.country,
      'population': instance.population,
      'timezone': instance.timezone,
      'sunrise': instance.sunrise,
      'sunset': instance.sunset,
    };
