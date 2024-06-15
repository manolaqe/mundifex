import 'package:flutter/material.dart';

import '../models/forecast_weather.dart';

class ForecastWeatherColumn extends StatelessWidget {
  const ForecastWeatherColumn({super.key, required this.forecastWeatherData, required this.index});

  final ForecastWeather forecastWeatherData;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          forecastWeatherData.list[index].dtTxt.substring(11, 16),
          style: const TextStyle(
            fontSize: 17,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 10),
        ImageIcon(
          AssetImage('assets/${forecastWeatherData.list[index].weather.first.icon}.png'),
          color: Colors.white,
          size: 40,
        ),
        Text(
          '${forecastWeatherData.list[index].main.temp.round()}°',
          style: const TextStyle(fontSize: 17, color: Colors.white),
        ),
        const SizedBox(height: 10),
        Row(
          children: <Widget>[
            const Icon(Icons.water_drop_sharp, color: Colors.white, size: 17),
            Text(
              '${forecastWeatherData.list[index].main.humidity}%',
              style: const TextStyle(
                fontSize: 17,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
