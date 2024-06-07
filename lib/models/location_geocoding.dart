import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_geocoding.freezed.dart';
part 'location_geocoding.g.dart';

@freezed
class LocationGeocoding with _$LocationGeocoding {
  const factory LocationGeocoding({
    required double lat,
    required double lon,
  }) = LocationGeocoding$;

  factory LocationGeocoding.fromJson(Map<String, dynamic> json) =>
      _$LocationGeocodingFromJson(Map<String, dynamic>.from(json));
}
