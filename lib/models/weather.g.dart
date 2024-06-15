// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$Weather$Impl _$$Weather$ImplFromJson(Map<String, dynamic> json) => _$Weather$Impl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      main: json['main'] as String? ?? '',
      description: json['description'] as String? ?? '',
      icon: json['icon'] as String? ?? '',
    );

Map<String, dynamic> _$$Weather$ImplToJson(_$Weather$Impl instance) => <String, dynamic>{
      'id': instance.id,
      'main': instance.main,
      'description': instance.description,
      'icon': instance.icon,
    };
