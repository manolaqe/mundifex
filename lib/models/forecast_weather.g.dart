// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ForecastWeather$Impl _$$ForecastWeather$ImplFromJson(
        Map<String, dynamic> json) =>
    _$ForecastWeather$Impl(
      cod: json['cod'] as String? ?? '',
      message: (json['message'] as num?)?.toInt() ?? 0,
      cnt: (json['cnt'] as num?)?.toInt() ?? 0,
      list: (json['list'] as List<dynamic>?)
              ?.map((e) => ForecastElement.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <ForecastElement>[],
      city: City.fromJson(json['city'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ForecastWeather$ImplToJson(
        _$ForecastWeather$Impl instance) =>
    <String, dynamic>{
      'cod': instance.cod,
      'message': instance.message,
      'cnt': instance.cnt,
      'list': instance.list,
      'city': instance.city,
    };
