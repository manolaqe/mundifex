import 'package:freezed_annotation/freezed_annotation.dart';

import 'address_component.dart';
import 'geometry.dart';

part 'address_result.freezed.dart';
part 'address_result.g.dart';

@freezed
class AddressResult with _$AddressResult {
  const factory AddressResult({
    @Default(<AddressComponent>[]) @JsonKey(name: 'address_components') List<AddressComponent> addressComponents,
    @Default('') @JsonKey(name: 'formatted_address') String formattedAddress,
    required Geometry geometry,
    @Default('') @JsonKey(name: 'place_id') String placeId,
    @Default(<String>[]) List<String> types,
  }) = AddressResult$;

  factory AddressResult.fromJson(Map<dynamic, dynamic> json) =>
      _$AddressResultFromJson(Map<String, dynamic>.from(json));
}
