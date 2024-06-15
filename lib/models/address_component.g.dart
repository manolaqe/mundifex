// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddressComponent$Impl _$$AddressComponent$ImplFromJson(Map<String, dynamic> json) => _$AddressComponent$Impl(
      longName: json['long_name'] as String? ?? '',
      shortName: json['short_name'] as String? ?? '',
      types: (json['types'] as List<dynamic>?)?.map((e) => e as String).toList() ?? const <String>[],
    );

Map<String, dynamic> _$$AddressComponent$ImplToJson(_$AddressComponent$Impl instance) => <String, dynamic>{
      'long_name': instance.longName,
      'short_name': instance.shortName,
      'types': instance.types,
    };
