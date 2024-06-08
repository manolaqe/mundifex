import 'package:freezed_annotation/freezed_annotation.dart';

import '../models/water_quality_data.dart';
import 'app_action.dart';

part 'get_water_quality.freezed.dart';

@freezed
class GetWaterQuality with _$GetWaterQuality implements AppAction {
  const factory GetWaterQuality() = GetWaterQualityStart;

  const factory GetWaterQuality.successful(List<WaterQualityData> waterQualityData) = GetWaterQualitySuccessful;

  @Implements<ErrorAction>()
  const factory GetWaterQuality.error(Object error, StackTrace stackTrace) = GetWaterQualityError;
}
