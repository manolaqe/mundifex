import 'package:freezed_annotation/freezed_annotation.dart';

import 'address_result.dart';
part 'address_data.freezed.dart';
part 'address_data.g.dart';

@freezed
class AddressData with _$AddressData {
  const factory AddressData({
    @Default(<AddressResult>[]) List<AddressResult> results,
    @Default('') String status,
  }) = AddressData$;

  factory AddressData.fromJson(Map<dynamic, dynamic> json) => _$AddressDataFromJson(Map<String, dynamic>.from(json));
}
