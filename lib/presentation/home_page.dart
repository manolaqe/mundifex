import 'package:flutter/material.dart';

import '../models/app_state.dart';
import '../models/current_weather.dart';
import '../models/location_data.dart';
import 'containers/address_container.dart';
import 'containers/is_loading_container.dart';
import 'containers/location_container.dart';
import 'containers/weather_container.dart';
import 'extensions.dart';
import 'info_card.dart';

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
    return WeatherContainer(
      builder: (BuildContext context, CurrentWeather? weatherData) {
        return IsLoadingContainer(
          builder: (BuildContext context, bool isLoading) {
            if (weatherData == null) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            return RefreshIndicator(
              onRefresh: () async {
                await context.store.onChange.firstWhere((AppState state) => !state.isLoading);
              },
              child: LocationContainer(
                builder: (BuildContext context, LocationData? locationData) {
                  if (locationData == null) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  return AddressContainer(
                    builder: (BuildContext context, String? address) {
                      if (address == null) {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                      return Scaffold(
                        appBar: AppBar(
                          title: Text('Mundifex'),
                        ),
                        body: Column(
                          children: <Widget>[
                            Expanded(
                              child: CustomScrollView(
                                slivers: <Widget>[
                                  SliverToBoxAdapter(
                                      child: InfoCard(
                                          locationData: locationData, currentWeather: weatherData, address: address)),
                                  SliverToBoxAdapter(child: Text(weatherData.main.feelsLike.toString())),
                                  // InfoCard(locationData: locationData!, currentWeather: weatherData!)
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
              ),
            );
          },
        );
      },
    );
  }
}
