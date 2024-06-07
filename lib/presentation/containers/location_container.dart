import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import '../../models/app_state.dart';
import '../../models/location_data.dart';

class LocationContainer extends StatelessWidget {
  const LocationContainer({super.key, required this.builder});

  final ViewModelBuilder<LocationData?> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, LocationData?>(
      builder: builder,
      converter: (Store<AppState> store) {
        return store.state.locationData;
      },
    );
  }
}
