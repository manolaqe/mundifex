import 'package:flutter/material.dart';

import '../actions/get_location.dart';
import '../models/address_data.dart';
import '../models/air_pollution_data.dart';
import '../models/app_state.dart';
import '../models/current_weather.dart';
import '../models/flow_segment_data.dart';
import '../models/location_data.dart';
import '../models/post.dart';
import '../models/water_quality_data.dart';
import 'containers/address_container.dart';
import 'containers/air_pollution_container.dart';
import 'containers/flow_segment_data_container.dart';
import 'containers/is_loading_container.dart';
import 'containers/location_container.dart';
import 'containers/posts_container.dart';
import 'containers/water_quality_container.dart';
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
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        context.store.dispatch(const GetLocation());
        await context.store.onChange.firstWhere((AppState state) => !state.isLoading);
      },
      child: WeatherContainer(
        builder: (BuildContext context, CurrentWeather? weatherData) {
          return LocationContainer(
            builder: (BuildContext context, LocationData? locationData) {
              if (locationData == null) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              return AddressContainer(
                builder: (BuildContext context, AddressData? addressData) {
                  if (addressData == null) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  return FlowSegmentDataContainer(
                    builder: (BuildContext context, FlowSegmentData? flowSegmentData) {
                      if (flowSegmentData == null) {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                      return AirPollutionContainer(
                        builder: (BuildContext context, AirPollutionData? airPollutionData) {
                          if (airPollutionData == null) {
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          }
                          return WaterQualityContainer(
                              builder: (BuildContext context, List<WaterQualityData>? waterQualityData) {
                            if (waterQualityData == null) {
                              return const Center(
                                child: CircularProgressIndicator(),
                              );
                            }
                            return PostsContainer(builder: (BuildContext context, List<Post>? posts) {
                              if (posts == null) {
                                return const Center(
                                  child: CircularProgressIndicator(),
                                );
                              }
                              return IsLoadingContainer(
                                builder: (BuildContext context, bool isLoading) {
                                  if (weatherData == null) {
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
                                                child: GestureDetector(
                                                  onTap: () {
                                                    Navigator.pushNamed(
                                                      context,
                                                      '/forecast_page',
                                                    );
                                                  },
                                                  child: InfoCard(
                                                    locationData: locationData,
                                                    currentWeather: weatherData,
                                                    addressData: addressData,
                                                    airPollutionData: airPollutionData,
                                                    flowSegmentData: flowSegmentData,
                                                    waterQualityData: waterQualityData,
                                                  ),
                                                ),
                                              ),
                                              SliverToBoxAdapter(),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              );
                            });
                          });
                        },
                      );
                    },
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}
