// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CurrentWeather$Impl _$$CurrentWeather$ImplFromJson(Map<String, dynamic> json) => _$CurrentWeather$Impl(
      coord: Coord.fromJson(json['coord'] as Map<String, dynamic>),
      weather: (json['weather'] as List<dynamic>?)?.map((e) => Weather.fromJson(e as Map<String, dynamic>)).toList() ??
          const <Weather>[],
      main: Main.fromJson(json['main'] as Map<String, dynamic>),
      visibility: (json['visibility'] as num?)?.toInt() ?? 0,
      wind: Wind.fromJson(json['wind'] as Map<String, dynamic>),
      rain: json['rain'] == null ? null : Rain.fromJson(json['rain'] as Map<String, dynamic>),
      snow: json['snow'] == null ? null : Snow.fromJson(json['snow'] as Map<String, dynamic>),
      clouds: Clouds.fromJson(json['clouds'] as Map<String, dynamic>),
      dt: (json['dt'] as num?)?.toInt() ?? 0,
      sys: Sys.fromJson(json['sys'] as Map<String, dynamic>),
      timezone: (json['timezone'] as num?)?.toInt() ?? 0,
      id: (json['id'] as num?)?.toInt() ?? 0,
      name: json['name'] as String? ?? '',
    );

Map<String, dynamic> _$$CurrentWeather$ImplToJson(_$CurrentWeather$Impl instance) => <String, dynamic>{
      'coord': instance.coord,
      'weather': instance.weather,
      'main': instance.main,
      'visibility': instance.visibility,
      'wind': instance.wind,
      'rain': instance.rain,
      'snow': instance.snow,
      'clouds': instance.clouds,
      'dt': instance.dt,
      'sys': instance.sys,
      'timezone': instance.timezone,
      'id': instance.id,
      'name': instance.name,
    };
