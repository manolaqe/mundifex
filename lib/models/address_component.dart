import 'package:freezed_annotation/freezed_annotation.dart';

part 'address_component.freezed.dart';
part 'address_component.g.dart';

@freezed
class AddressComponent with _$AddressComponent {
  const factory AddressComponent({
    @Default('') @JsonKey(name: 'long_name') String longName,
    @Default('') @JsonKey(name: 'short_name') String shortName,
    @Default(<String>[]) List<String> types,
  }) = AddressComponent$;

  factory AddressComponent.fromJson(Map<dynamic, dynamic> json) =>
      _$AddressComponentFromJson(Map<String, dynamic>.from(json));
}
