// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_element.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ForecastElement$Impl _$$ForecastElement$ImplFromJson(
        Map<String, dynamic> json) =>
    _$ForecastElement$Impl(
      dt: (json['dt'] as num?)?.toInt() ?? 0,
      main: Main.fromJson(json['main'] as Map<String, dynamic>),
      weather: (json['weather'] as List<dynamic>?)
              ?.map((e) => Weather.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Weather>[],
      clouds: Clouds.fromJson(json['clouds'] as Map<String, dynamic>),
      wind: json['wind'] == null
          ? null
          : Wind.fromJson(json['wind'] as Map<String, dynamic>),
      visibility: (json['visibility'] as num?)?.toInt() ?? 0,
      pop: (json['pop'] as num?)?.toDouble() ?? 0,
      rain: json['rain'] == null
          ? null
          : Rain.fromJson(json['rain'] as Map<String, dynamic>),
      snow: json['snow'] == null
          ? null
          : Snow.fromJson(json['snow'] as Map<String, dynamic>),
      dtTxt: json['dt_txt'] as String? ?? '',
    );

Map<String, dynamic> _$$ForecastElement$ImplToJson(
        _$ForecastElement$Impl instance) =>
    <String, dynamic>{
      'dt': instance.dt,
      'main': instance.main,
      'weather': instance.weather,
      'clouds': instance.clouds,
      'wind': instance.wind,
      'visibility': instance.visibility,
      'pop': instance.pop,
      'rain': instance.rain,
      'snow': instance.snow,
      'dt_txt': instance.dtTxt,
    };
