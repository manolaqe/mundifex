import 'package:freezed_annotation/freezed_annotation.dart';

import 'address_coordinates.dart';

part 'viewport.freezed.dart';
part 'viewport.g.dart';

@freezed
class Viewport with _$Viewport {
  const factory Viewport({
    required AddressCoordinates northeast,
    required AddressCoordinates southwest,
  }) = Viewport$;

  factory Viewport.fromJson(Map<dynamic, dynamic> json) => _$ViewportFromJson(Map<String, dynamic>.from(json));
}
