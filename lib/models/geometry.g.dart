// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'geometry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$Geometry$Impl _$$Geometry$ImplFromJson(Map<String, dynamic> json) => _$Geometry$Impl(
      location: AddressCoordinates.fromJson(json['location'] as Map<String, dynamic>),
      locationType: json['location_type'] as String? ?? '',
      viewport: Viewport.fromJson(json['viewport'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$Geometry$ImplToJson(_$Geometry$Impl instance) => <String, dynamic>{
      'location': instance.location,
      'location_type': instance.locationType,
      'viewport': instance.viewport,
    };
