import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/src/store.dart';

import '../actions/get_location.dart';
import '../actions/get_posts.dart';
import '../actions/get_users.dart';
import '../models/address_data.dart';
import '../models/air_pollution_data.dart';
import '../models/app_state.dart';
import '../models/app_user.dart';
import '../models/current_weather.dart';
import '../models/flow_segment_data.dart';
import '../models/location_data.dart';
import '../models/post.dart';
import '../models/water_quality_data.dart';
import 'containers/address_container.dart';
import 'containers/air_pollution_container.dart';
import 'containers/app_user_container.dart';
import 'containers/flow_segment_data_container.dart';
import 'containers/is_loading_container.dart';
import 'containers/location_container.dart';
import 'containers/posts_container.dart';
import 'containers/users_container.dart';
import 'containers/water_quality_container.dart';
import 'containers/weather_container.dart';
import 'extensions.dart';
import 'info_card.dart';
import 'posts_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(onRefresh: () async {
      context.store.dispatch(const GetLocation());
      context.store.dispatch(const GetUsers());
      await context.store.onChange.firstWhere((AppState state) => !state.isLoading);
    }, child: WeatherContainer(builder: (BuildContext context, CurrentWeather? weatherData) {
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
                          return StoreConnector<AppState, List<Post>>(
                              converter: (Store<AppState> store) => store.state.posts,
                              onInit: (Store<AppState> store) => store.dispatch(const GetPosts()),
                              builder: (BuildContext context, List<Post>? posts) {
                                if (posts == null) {
                                  return const Center(
                                    child: CircularProgressIndicator(),
                                  );
                                }
                                return UsersContainer(builder: (BuildContext context, Map<String, AppUser>? users) {
                                  if (users == null) {
                                    return const Center(
                                      child: CircularProgressIndicator(),
                                    );
                                  }
                                  return AppUserContainer(builder: (BuildContext context, AppUser? user) {
                                    return UsersContainer(builder: (BuildContext context, Map<String, AppUser>? users) {
                                      if (users == null) {
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
                                              title: const Text('Mundifex'),
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
                                                      SliverToBoxAdapter(
                                                        child: PostsWidget(posts: posts, users: users, user: user),
                                                      ),
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
      );
    }));
  }
}
