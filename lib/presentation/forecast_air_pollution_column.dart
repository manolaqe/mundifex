import 'package:flutter/material.dart';

import '../models/air_pollution_data_forecast.dart';
import 'utils.dart';

class ForecastAirPollutionColumn extends StatelessWidget {
  const ForecastAirPollutionColumn({super.key, required this.forecastAirPollutionData, required this.index});

  final AirPollutionDataForecast forecastAirPollutionData;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          '${DateTime.fromMillisecondsSinceEpoch(forecastAirPollutionData.list[index].dt * 1000).hour}:00',
          style: const TextStyle(
            fontSize: 17,
            color: Colors.white,
          ),
        ),
        Text(
          '${Utils.computeAQIComponents(forecastAirPollutionData.list[index].components)}',
          style:
              TextStyle(fontSize: 17, color: Utils.getAirQualityColor(forecastAirPollutionData.list[index].main.aqi)),
        ),
        Row(
          children: <Widget>[
            Text(
              '${forecastAirPollutionData.list[index].components.pm2_5}',
              style: TextStyle(
                  fontSize: 17,
                  color: Utils.getPM2_5Color(forecastAirPollutionData.list[index].components.pm2_5.round())),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Text(
              '${forecastAirPollutionData.list[index].components.pm10}',
              style: TextStyle(
                fontSize: 17,
                color: Utils.getPM2_5Color(forecastAirPollutionData.list[index].components.pm10.round()),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
