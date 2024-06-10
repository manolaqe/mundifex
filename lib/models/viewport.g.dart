// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'viewport.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$Viewport$Impl _$$Viewport$ImplFromJson(Map<String, dynamic> json) =>
    _$Viewport$Impl(
      northeast: AddressCoordinates.fromJson(
          json['northeast'] as Map<String, dynamic>),
      southwest: AddressCoordinates.fromJson(
          json['southwest'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$Viewport$ImplToJson(_$Viewport$Impl instance) =>
    <String, dynamic>{
      'northeast': instance.northeast,
      'southwest': instance.southwest,
    };
