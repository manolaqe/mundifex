import 'package:flutter/material.dart';

import '../actions/get_weather.dart';
import '../models/app_state.dart';
import '../models/current_weather.dart';
import 'containers/is_loading_container.dart';
import 'containers/weather_container.dart';
import 'extension.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return IsLoadingContainer(
      builder: (BuildContext context, bool isLoading) {
        return WeatherContainer(
          builder: (BuildContext context, CurrentWeather? weatherData) {
            if (weatherData == null) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            return RefreshIndicator(
              onRefresh: () async {
                await context.store.onChange.firstWhere((AppState state) => !state.isLoading);
              },
              child: Scaffold(
                appBar: AppBar(
                  title: const Text('Weathrer'),
                ),
                body: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(weatherData!.coord.toString()),
                    ],
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
