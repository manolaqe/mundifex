import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import '../../models/app_state.dart';
import '../../models/forecast_weather.dart';

class ForecastWeatherContainer extends StatelessWidget {
  const ForecastWeatherContainer({super.key, required this.builder});

  final ViewModelBuilder<ForecastWeather?> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, ForecastWeather?>(
      builder: builder,
      converter: (Store<AppState> store) {
        return store.state.forecastWeather;
      },
    );
  }
}
