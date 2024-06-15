import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/air_pollution_data_forecast.dart';
import '../models/air_pollution_element_forecast.dart';
import 'utils.dart';

class ForecastAirPollutionRow extends StatelessWidget {
  const ForecastAirPollutionRow({super.key, required this.airPollutionDataForecast, required this.hours});

  final AirPollutionDataForecast airPollutionDataForecast;
  final int hours;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        SizedBox(
          width: 90,
          child: Text(DateFormat('EEEE').format(DateTime.now().add(Duration(hours: hours))),
              style: const TextStyle(fontSize: 16, color: Colors.white)),
        ),
        Row(
          children: <Widget>[
            const Text('AQI - '),
            Text(
                '${Utils.computeAQIComponents(airPollutionDataForecast.list.firstWhere((AirPollutionElementForecast element) => DateTime.fromMillisecondsSinceEpoch(element.dt * 1000).day == (DateTime.now().add(Duration(hours: hours)).day)).components)}',
                style: const TextStyle(fontSize: 16, color: Colors.white)),
          ],
        ),
        Row(
          children: <Widget>[
            const Text('PM2.5 - '),
            Text(
                '${airPollutionDataForecast.list.firstWhere((AirPollutionElementForecast element) => DateTime.fromMillisecondsSinceEpoch(element.dt * 1000).day == (DateTime.now().add(Duration(hours: hours)).day)).components.pm2_5.round()}',
                style: const TextStyle(fontSize: 16, color: Colors.white)),
          ],
        ),
        Row(
          children: <Widget>[
            const Text('PM10 - '),
            Text(
                '${airPollutionDataForecast.list.firstWhere((AirPollutionElementForecast element) => DateTime.fromMillisecondsSinceEpoch(element.dt * 1000).day == (DateTime.now().add(Duration(hours: hours)).day)).components.pm10.round()}',
                style: const TextStyle(fontSize: 16, color: Colors.white)),
          ],
        )
      ],
    );
  }
}
