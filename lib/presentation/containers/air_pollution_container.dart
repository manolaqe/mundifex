import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import '../../models/air_pollution_data.dart';
import '../../models/app_state.dart';

class AirPollutionContainer extends StatelessWidget {
  const AirPollutionContainer({super.key, required this.builder});

  final ViewModelBuilder<AirPollutionData?> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AirPollutionData?>(
      builder: builder,
      converter: (Store<AppState> store) {
        return store.state.airPollutionData;
      },
    );
  }
}
