import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_data.freezed.dart';
part 'location_data.g.dart';

@freezed
class LocationData with _$LocationData {
  const factory LocationData({required double lat, required double lon}) = LocationData$;

  factory LocationData.fromJson(Map<String, dynamic> json) => _$LocationDataFromJson(Map<String, dynamic>.from(json));
}
