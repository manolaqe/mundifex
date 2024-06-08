import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import '../../models/app_state.dart';
import '../../models/flow_segment_data.dart';

class FlowSegmentDataContainer extends StatelessWidget {
  const FlowSegmentDataContainer({super.key, required this.builder});

  final ViewModelBuilder<FlowSegmentData?> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, FlowSegmentData?>(
      builder: builder,
      converter: (Store<AppState> store) {
        return store.state.flowSegmentData;
      },
    );
  }
}
