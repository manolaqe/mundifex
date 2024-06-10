// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddressResult$Impl _$$AddressResult$ImplFromJson(Map<String, dynamic> json) =>
    _$AddressResult$Impl(
      addressComponents: (json['address_components'] as List<dynamic>?)
              ?.map((e) => AddressComponent.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <AddressComponent>[],
      formattedAddress: json['formatted_address'] as String? ?? '',
      geometry: Geometry.fromJson(json['geometry'] as Map<String, dynamic>),
      placeId: json['place_id'] as String? ?? '',
      types:
          (json['types'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const <String>[],
    );

Map<String, dynamic> _$$AddressResult$ImplToJson(
        _$AddressResult$Impl instance) =>
    <String, dynamic>{
      'address_components': instance.addressComponents,
      'formatted_address': instance.formattedAddress,
      'geometry': instance.geometry,
      'place_id': instance.placeId,
      'types': instance.types,
    };
