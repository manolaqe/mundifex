import 'package:freezed_annotation/freezed_annotation.dart';

import '../models/flow_segment_data.dart';
import 'app_action.dart';

part 'get_flow_segment_data.freezed.dart';

@freezed
class GetFlowSegmentData with _$GetFlowSegmentData implements AppAction {
  const factory GetFlowSegmentData() = GetFlowSegmentDataStart;

  const factory GetFlowSegmentData.successful(FlowSegmentData flowSegmentData) = GetFlowSegmentDataSuccessful;

  @Implements<ErrorAction>()
  const factory GetFlowSegmentData.error(Object error, StackTrace stackTrace) = GetFlowSegmentDataError;
}
