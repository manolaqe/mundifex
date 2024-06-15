// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddressData$Impl _$$AddressData$ImplFromJson(Map<String, dynamic> json) => _$AddressData$Impl(
      results:
          (json['results'] as List<dynamic>?)?.map((e) => AddressResult.fromJson(e as Map<String, dynamic>)).toList() ??
              const <AddressResult>[],
      status: json['status'] as String? ?? '',
    );

Map<String, dynamic> _$$AddressData$ImplToJson(_$AddressData$Impl instance) => <String, dynamic>{
      'results': instance.results,
      'status': instance.status,
    };
