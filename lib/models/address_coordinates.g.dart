// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_coordinates.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddressCoordinates$Impl _$$AddressCoordinates$ImplFromJson(Map<String, dynamic> json) => _$AddressCoordinates$Impl(
      lat: (json['lat'] as num?)?.toDouble() ?? 0.0,
      lng: (json['lng'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$$AddressCoordinates$ImplToJson(_$AddressCoordinates$Impl instance) => <String, dynamic>{
      'lat': instance.lat,
      'lng': instance.lng,
    };
