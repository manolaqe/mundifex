import 'package:flutter/material.dart';

import '../actions/get_location.dart';
import '../models/address_data.dart';
import '../models/air_pollution_data.dart';
import '../models/app_state.dart';
import '../models/current_weather.dart';
import '../models/flow_segment_data.dart';
import '../models/forecast_weather.dart';
import '../models/location_data.dart';
import '../models/water_quality_data.dart';
import 'containers/address_container.dart';
import 'containers/air_pollution_container.dart';
import 'containers/flow_segment_data_container.dart';
import 'containers/forecast_weather_container.dart';
import 'containers/location_container.dart';
import 'containers/water_quality_container.dart';
import 'containers/weather_container.dart';
import 'curved_line_painter.dart';
import 'day_weather_column.dart';
import 'extensions.dart';
import 'forecast_weather_row.dart';
import 'pollutant_column.dart';
import 'utils.dart';
import 'water_quality_card.dart';

class ForecastPage extends StatelessWidget {
  const ForecastPage({super.key});

  final Color backgroundColor = const Color.fromARGB(255, 84, 152, 225);

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        context.store.dispatch(const GetLocation());
        await context.store.onChange.firstWhere((AppState state) => !state.isLoading);
      },
      child: WeatherContainer(
        builder: (BuildContext context, CurrentWeather? weatherData) {
          if (weatherData == null) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return ForecastWeatherContainer(
            builder: (BuildContext context, ForecastWeather? forecastWeatherData) {
              if (forecastWeatherData == null) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
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
                                  return Scaffold(
                                    appBar: AppBar(
                                      backgroundColor: Colors.transparent,
                                      title: const Text('Forecast'),
                                    ),
                                    backgroundColor: backgroundColor,
                                    body: SingleChildScrollView(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                            stops: const <double>[0.25, 1.0],
                                            begin: Alignment.topLeft,
                                            end: Alignment.bottomLeft,
                                            colors: <Color>[
                                              backgroundColor,
                                              backgroundColor
                                                  .withRed(backgroundColor.red + 40)
                                                  .withGreen(backgroundColor.green + 20)
                                                  .withBlue(backgroundColor.blue - 10),
                                            ],
                                          ),
                                        ),
                                        child: Column(
                                          children: <Widget>[
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: <Widget>[
                                                Padding(
                                                  padding: const EdgeInsets.all(20),
                                                  child: Column(
                                                    children: <Widget>[
                                                      Text('${weatherData.main.temp.round()}°C',
                                                          style: const TextStyle(
                                                              fontSize: 70, fontWeight: FontWeight.bold)),
                                                      Text(
                                                        weatherData.weather.isNotEmpty
                                                            ? weatherData.weather[0].main
                                                            : '',
                                                        style: const TextStyle(fontSize: 20),
                                                      ),
                                                      Text(
                                                        '${weatherData.main.tempMin.round()}°/${weatherData.main.tempMax.round()}° | ${weatherData.main.humidity}%  Feels like ${weatherData.main.feelsLike.round()}°C',
                                                        style: const TextStyle(
                                                          fontSize: 20,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Card(
                                              shape: ShapeBorder.lerp(
                                                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                                                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                                                0.5,
                                              ),
                                              elevation: 2,
                                              color: backgroundColor.withAlpha(150),
                                              margin: const EdgeInsets.all(10.0),
                                              child: Padding(
                                                padding: const EdgeInsets.all(15),
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                  children: <Widget>[
                                                    for (int i = 0; i < 6; i++)
                                                      ForecastWeatherColumn(
                                                        forecastWeatherData: forecastWeatherData,
                                                        index: i,
                                                      ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Card(
                                              shape: ShapeBorder.lerp(
                                                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                                                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                                                0.5,
                                              ),
                                              elevation: 2,
                                              color: backgroundColor.withAlpha(150),
                                              margin: const EdgeInsets.all(10.0),
                                              child: Padding(
                                                padding: const EdgeInsets.all(15),
                                                child: Column(
                                                  children: <Widget>[
                                                    Text('Air Quality Index: ${Utils.computeAQI(airPollutionData)}',
                                                        style: const TextStyle(fontSize: 20)),
                                                    LinearProgressIndicator(
                                                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                                                      minHeight: 5,
                                                      value: airPollutionData.list[0].main.aqi / 5,
                                                      backgroundColor: Colors.white,
                                                      valueColor: AlwaysStoppedAnimation<Color>(
                                                        Utils.getAirQualityColor(airPollutionData.list[0].main.aqi),
                                                      ),
                                                    ),
                                                    const SizedBox(height: 10),
                                                    const Text('Pollutants (μg/m3)', style: TextStyle(fontSize: 20)),
                                                    const SizedBox(height: 10),
                                                    Row(
                                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                      children: <Widget>[
                                                        PollutantColumn(
                                                            name: 'SO2',
                                                            value: airPollutionData.list[0].components.so2),
                                                        PollutantColumn(
                                                            name: 'NO2',
                                                            value: airPollutionData.list[0].components.no2),
                                                        PollutantColumn(
                                                            name: 'PM10',
                                                            value: airPollutionData.list[0].components.pm10),
                                                        PollutantColumn(
                                                            name: 'PM2.5',
                                                            value: airPollutionData.list[0].components.pm2_5),
                                                        PollutantColumn(
                                                            name: 'O3', value: airPollutionData.list[0].components.o3),
                                                        PollutantColumn(
                                                            name: 'CO', value: airPollutionData.list[0].components.co),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            WaterQualityCard(waterQualityData: waterQualityData[0]),
                                            WaterQualityCard(waterQualityData: waterQualityData[1]),
                                            WaterQualityCard(waterQualityData: waterQualityData[2]),
                                            WaterQualityCard(waterQualityData: waterQualityData[3]),
                                            WaterQualityCard(waterQualityData: waterQualityData[4]),
                                            WaterQualityCard(waterQualityData: waterQualityData[5]),
                                            Card(
                                              shape: ShapeBorder.lerp(
                                                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                                                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                                                0.5,
                                              ),
                                              elevation: 2,
                                              color: backgroundColor.withAlpha(150),
                                              margin: const EdgeInsets.all(10.0),
                                              child: Padding(
                                                padding: const EdgeInsets.all(15),
                                                child: Column(
                                                  children: <Widget>[
                                                    CustomPaint(
                                                      painter: CurvedLinePainter(
                                                        progress: (DateTime.now()
                                                                    .difference(DateTime.fromMillisecondsSinceEpoch(
                                                                        forecastWeatherData.city.sunrise * 1000))
                                                                    .inHours /
                                                                (DateTime.fromMillisecondsSinceEpoch(
                                                                        forecastWeatherData.city.sunset * 1000)
                                                                    .difference(DateTime.fromMillisecondsSinceEpoch(
                                                                        forecastWeatherData.city.sunrise * 1000))
                                                                    .inHours)) /
                                                            2,
                                                      ),
                                                      size: const Size(400, 100),
                                                    ),
                                                    const Divider(color: Colors.white, thickness: 2),
                                                    Row(
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: <Widget>[
                                                        Column(
                                                          children: <Widget>[
                                                            Text(
                                                                DateTime.fromMillisecondsSinceEpoch(
                                                                        forecastWeatherData.city.sunrise * 1000)
                                                                    .toString()
                                                                    .substring(11, 16),
                                                                style:
                                                                    const TextStyle(fontSize: 17, color: Colors.white)),
                                                            const Text('Sunrise',
                                                                style: TextStyle(fontSize: 17, color: Colors.white)),
                                                          ],
                                                        ),
                                                        Column(
                                                          children: <Widget>[
                                                            Text(
                                                                DateTime.fromMillisecondsSinceEpoch(
                                                                        forecastWeatherData.city.sunset * 1000)
                                                                    .toString()
                                                                    .substring(11, 16),
                                                                style:
                                                                    const TextStyle(fontSize: 17, color: Colors.white)),
                                                            const Text('Sunset',
                                                                style: TextStyle(fontSize: 17, color: Colors.white)),
                                                          ],
                                                        ),
                                                      ],
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Card(
                                              shape: ShapeBorder.lerp(
                                                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                                                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                                                0.5,
                                              ),
                                              elevation: 2,
                                              color: backgroundColor.withAlpha(150),
                                              margin: const EdgeInsets.all(10.0),
                                              child: Padding(
                                                padding: const EdgeInsets.all(15),
                                                child: Column(
                                                  children: <Widget>[
                                                    ForecastWeatherRow(
                                                        forecastWeatherData: forecastWeatherData, hours: 0),
                                                    const SizedBox(height: 10),
                                                    ForecastWeatherRow(
                                                        forecastWeatherData: forecastWeatherData, hours: 24),
                                                    const SizedBox(height: 10),
                                                    ForecastWeatherRow(
                                                        forecastWeatherData: forecastWeatherData, hours: 48),
                                                    const SizedBox(height: 10),
                                                    ForecastWeatherRow(
                                                        forecastWeatherData: forecastWeatherData, hours: 72),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Card(
                                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                                              elevation: 2,
                                              color: backgroundColor.withAlpha(150),
                                              margin: const EdgeInsets.all(10.0),
                                              child: Padding(
                                                padding: const EdgeInsets.all(20),
                                                child: ListTile(
                                                  leading: const Icon(Icons.visibility, color: Colors.white),
                                                  title: const Text('Visibility',
                                                      style: TextStyle(fontSize: 20, color: Colors.white)),
                                                  subtitle: Text('${weatherData.visibility} m',
                                                      style: const TextStyle(fontSize: 16, color: Colors.white)),
                                                ),
                                              ),
                                            ),
                                            Card(
                                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                                              elevation: 2,
                                              color: backgroundColor.withAlpha(150),
                                              margin: const EdgeInsets.all(10.0),
                                              child: Padding(
                                                padding: const EdgeInsets.all(20),
                                                child: ListTile(
                                                  leading: const Icon(Icons.speed, color: Colors.white),
                                                  title: const Text('Pressure',
                                                      style: TextStyle(fontSize: 20, color: Colors.white)),
                                                  subtitle: Text('${weatherData.main.pressure} hPa',
                                                      style: const TextStyle(fontSize: 16, color: Colors.white)),
                                                ),
                                              ),
                                            ),
                                            Card(
                                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                                              elevation: 2,
                                              color: backgroundColor.withAlpha(150),
                                              margin: const EdgeInsets.all(10.0),
                                              child: Padding(
                                                padding: const EdgeInsets.all(20),
                                                child: ListTile(
                                                  leading: const Icon(Icons.water, color: Colors.white),
                                                  title: const Text('Humidity',
                                                      style: TextStyle(fontSize: 20, color: Colors.white)),
                                                  subtitle: Text('${weatherData.main.humidity}%',
                                                      style: const TextStyle(fontSize: 16, color: Colors.white)),
                                                ),
                                              ),
                                            ),
                                            Card(
                                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                                              elevation: 2,
                                              color: backgroundColor.withAlpha(150),
                                              margin: const EdgeInsets.all(10.0),
                                              child: Padding(
                                                padding: const EdgeInsets.all(20),
                                                child: ListTile(
                                                  leading: Transform.rotate(
                                                      angle: (weatherData.wind.deg - 90) * 3.14 / 180,
                                                      child: const Icon(
                                                        Icons.navigation_outlined,
                                                        size: 30,
                                                        color: Colors.white,
                                                      )),
                                                  title: const Text('Wind',
                                                      style: TextStyle(fontSize: 20, color: Colors.white)),
                                                  subtitle: Text('${weatherData.wind.speed} m/s',
                                                      style: const TextStyle(fontSize: 16, color: Colors.white)),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
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
            },
          );
        },
      ),
    );
  }
}
