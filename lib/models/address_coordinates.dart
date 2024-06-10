import 'package:freezed_annotation/freezed_annotation.dart';

part 'address_coordinates.freezed.dart';
part 'address_coordinates.g.dart';

@freezed
class AddressCoordinates with _$AddressCoordinates {
  const factory AddressCoordinates({
    @Default(0.0) double lat,
    @Default(0.0) double lng,
  }) = AddressCoordinates$;

  factory AddressCoordinates.fromJson(Map<dynamic, dynamic> json) =>
      _$AddressCoordinatesFromJson(Map<String, dynamic>.from(json));
}
