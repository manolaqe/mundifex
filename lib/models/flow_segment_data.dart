import 'package:freezed_annotation/freezed_annotation.dart';

part 'flow_segment_data.freezed.dart';
part 'flow_segment_data.g.dart';

@freezed
class FlowSegmentData with _$FlowSegmentData {
  const factory FlowSegmentData({
    @Default('') String frc,
    @Default(0) double currentSpeed,
    @Default(0) double freeFlowSpeed,
    @Default(0) double currentTravelTime,
    @Default(0) double freeFlowTravelTime,
    @Default(0) double confidence,
    @Default(false) bool roadClosure,
  }) = FlowSegmentData$;

  factory FlowSegmentData.fromJson(Map<String, dynamic> json) =>
      _$FlowSegmentDataFromJson(Map<String, dynamic>.from(json));
}
