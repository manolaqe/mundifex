// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flow_segment_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FlowSegmentData$Impl _$$FlowSegmentData$ImplFromJson(
        Map<String, dynamic> json) =>
    _$FlowSegmentData$Impl(
      frc: json['frc'] as String? ?? '',
      currentSpeed: (json['currentSpeed'] as num?)?.toDouble() ?? 0,
      freeFlowSpeed: (json['freeFlowSpeed'] as num?)?.toDouble() ?? 0,
      currentTravelTime: (json['currentTravelTime'] as num?)?.toDouble() ?? 0,
      freeFlowTravelTime: (json['freeFlowTravelTime'] as num?)?.toDouble() ?? 0,
      confidence: (json['confidence'] as num?)?.toDouble() ?? 0,
      roadClosure: json['roadClosure'] as bool? ?? false,
    );

Map<String, dynamic> _$$FlowSegmentData$ImplToJson(
        _$FlowSegmentData$Impl instance) =>
    <String, dynamic>{
      'frc': instance.frc,
      'currentSpeed': instance.currentSpeed,
      'freeFlowSpeed': instance.freeFlowSpeed,
      'currentTravelTime': instance.currentTravelTime,
      'freeFlowTravelTime': instance.freeFlowTravelTime,
      'confidence': instance.confidence,
      'roadClosure': instance.roadClosure,
    };
