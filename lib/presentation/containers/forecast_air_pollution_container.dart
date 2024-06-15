import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import '../../models/air_pollution_data_forecast.dart';
import '../../models/app_state.dart';
import '../../models/forecast_weather.dart';

class ForecastAirPollutionContainer extends StatelessWidget {
  const ForecastAirPollutionContainer({super.key, required this.builder});

  final ViewModelBuilder<AirPollutionDataForecast?> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AirPollutionDataForecast?>(
      builder: builder,
      converter: (Store<AppState> store) {
        return store.state.airPollutionDataForecast;
      },
    );
  }
}
