import 'package:freezed_annotation/freezed_annotation.dart';

import 'address_coordinates.dart';
import 'viewport.dart';

part 'geometry.freezed.dart';
part 'geometry.g.dart';

@freezed
class Geometry with _$Geometry {
  const factory Geometry({
    required AddressCoordinates location,
    @Default('') @JsonKey(name: 'location_type') String locationType,
    required Viewport viewport,
  }) = Geometry$;

  factory Geometry.fromJson(Map<dynamic, dynamic> json) => _$GeometryFromJson(Map<String, dynamic>.from(json));
}
