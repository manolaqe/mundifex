import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import '../../models/app_state.dart';
import '../../models/current_weather.dart';

class WeatherContainer extends StatelessWidget {
  const WeatherContainer({super.key, required this.builder});

  final ViewModelBuilder<CurrentWeather?> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, CurrentWeather?>(
      builder: builder,
      converter: (Store<AppState> store) {
        return store.state.weatherData;
      },
    );
  }
}
