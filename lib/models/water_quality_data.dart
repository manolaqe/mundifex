import 'package:freezed_annotation/freezed_annotation.dart';

part 'water_quality_data.freezed.dart';
part 'water_quality_data.g.dart';

@freezed
class WaterQualityData with _$WaterQualityData {
  const factory WaterQualityData({
    @Default('') String id,
    @Default('') String sector,
    @Default('') String clor,
    @Default('') String ph,
  }) = WaterQualityData$;

  factory WaterQualityData.fromJson(Map<dynamic, dynamic> json) =>
      _$WaterQualityDataFromJson(Map<String, dynamic>.from(json));
}
