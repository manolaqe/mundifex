import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/forecast_element.dart';
import '../models/forecast_weather.dart';

class ForecastWeatherRow extends StatelessWidget {
  const ForecastWeatherRow({super.key, required this.forecastWeatherData, required this.hours});

  final ForecastWeather forecastWeatherData;
  final int hours;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        SizedBox(
          width: 90,
          child: Text(DateFormat('EEEE').format(DateTime.now().add(Duration(hours: hours))),
              style: const TextStyle(fontSize: 16, color: Colors.white)),
        ),
        Row(
          children: <Widget>[
            const Icon(Icons.water_drop_sharp, color: Colors.white, size: 16),
            Text(
                '${forecastWeatherData.list.firstWhere((ForecastElement element) => DateTime.parse(element.dtTxt).day == (DateTime.now().add(Duration(hours: hours)).day)).main.humidity}%',
                style: const TextStyle(fontSize: 16, color: Colors.white)),
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ImageIcon(
                AssetImage(
                    'assets/${forecastWeatherData.list.firstWhere((ForecastElement element) => DateTime.parse(element.dtTxt).day == (DateTime.now().add(Duration(hours: hours)).day)).weather[0].icon}.png'),
                color: Colors.white,
                size: 30),
            const SizedBox(
              width: 20,
              child: Text(
                '-',
                textAlign: TextAlign.center,
              ),
            ),
            ImageIcon(
                AssetImage(
                    'assets/${forecastWeatherData.list.lastWhere((ForecastElement element) => DateTime.parse(element.dtTxt).day == (DateTime.now().add(Duration(hours: hours)).day)).weather[0].icon}.png'),
                color: Colors.white,
                size: 30),
          ],
        ),
        Row(
          children: <Widget>[
            Text(
                '${forecastWeatherData.list.firstWhere((ForecastElement element) => DateTime.parse(element.dtTxt).day == (DateTime.now().add(Duration(hours: hours)).day)).main.tempMin.ceil()}°',
                style: const TextStyle(fontSize: 16, color: Colors.white)),
            const SizedBox(
              width: 20,
              child: Text(
                '-',
                textAlign: TextAlign.center,
              ),
            ),
            Text(
                '${forecastWeatherData.list.lastWhere((ForecastElement element) => DateTime.parse(element.dtTxt).day == (DateTime.now().add(Duration(hours: hours)).day)).main.tempMin.ceil()}°',
                style: const TextStyle(fontSize: 16, color: Colors.white)),
          ],
        )
      ],
    );
  }
}
