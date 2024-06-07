// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wind.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$Wind$Impl _$$Wind$ImplFromJson(Map<String, dynamic> json) => _$Wind$Impl(
      speed: (json['speed'] as num?)?.toDouble() ?? 0,
      deg: (json['deg'] as num?)?.toInt() ?? 0,
      gust: (json['gust'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$$Wind$ImplToJson(_$Wind$Impl instance) =>
    <String, dynamic>{
      'speed': instance.speed,
      'deg': instance.deg,
      'gust': instance.gust,
    };
