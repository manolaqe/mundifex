import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import '../../models/app_state.dart';
import '../../models/water_quality_data.dart';

class WaterQualityContainer extends StatelessWidget {
  const WaterQualityContainer({super.key, required this.builder});

  final ViewModelBuilder<List<WaterQualityData>?> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, List<WaterQualityData>?>(
      builder: builder,
      converter: (Store<AppState> store) {
        return store.state.waterQualityData;
      },
    );
  }
}
