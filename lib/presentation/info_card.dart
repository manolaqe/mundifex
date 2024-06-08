import 'package:flutter/material.dart';
import 'dart:math';
import '../models/air_pollution_data.dart';
import '../models/current_weather.dart';
import '../models/flow_segment_data.dart';
import '../models/location_data.dart';
import '../models/water_quality_data.dart';

class InfoCard extends StatelessWidget {
  const InfoCard(
      {super.key,
      required this.locationData,
      required this.currentWeather,
      required this.addressMap,
      required this.airPollutionData,
      required this.flowSegmentData,
      required this.waterQualityData});

  final LocationData locationData;
  final CurrentWeather currentWeather;
  final Map<String, String> addressMap;
  final AirPollutionData airPollutionData;
  final FlowSegmentData flowSegmentData;
  final List<WaterQualityData> waterQualityData;

  int computeAQI(AirPollutionData airPollutionData) {
    final double pm25 = airPollutionData.list[0].components.pm2_5;
    final double pm10 = airPollutionData.list[0].components.pm10;
    final double no2 = airPollutionData.list[0].components.no2;
    final double o3 = airPollutionData.list[0].components.o3;
    final double so2 = airPollutionData.list[0].components.so2;
    final double co = airPollutionData.list[0].components.co;

    double aqi = 0;

    if (pm25 > 0) {
      aqi = _calculateComponentAQI(pm25, 'pm25');
    } else if (pm10 > 0) {
      aqi = _calculateComponentAQI(pm10, 'pm10');
    } else if (no2 > 0) {
      aqi = _calculateComponentAQI(no2, 'no2');
    } else if (o3 > 0) {
      aqi = _calculateComponentAQI(o3, 'o3');
    } else if (so2 > 0) {
      aqi = _calculateComponentAQI(so2, 'so2');
    } else if (co > 0) {
      aqi = _calculateComponentAQI(co, 'co');
    }

    return aqi.round();
  }

  double _calculateComponentAQI(double value, String component) {
    double aqi = 0;

    if (component == 'pm25') {
      if (value <= 12) {
        aqi = _linearInterpolation(value, 0, 12, 0, 50);
      } else if (value <= 35.4) {
        aqi = _linearInterpolation(value, 12.1, 35.4, 51, 100);
      } else if (value <= 55.4) {
        aqi = _linearInterpolation(value, 35.5, 55.4, 101, 150);
      } else if (value <= 150.4) {
        aqi = _linearInterpolation(value, 55.5, 150.4, 151, 200);
      } else if (value <= 250.4) {
        aqi = _linearInterpolation(value, 150.5, 250.4, 201, 300);
      } else if (value <= 350.4) {
        aqi = _linearInterpolation(value, 250.5, 350.4, 301, 400);
      } else if (value <= 500.4) {
        aqi = _linearInterpolation(value, 350.5, 500.4, 401, 500);
      }
    } else if (component == 'pm10') {
      if (value <= 54) {
        aqi = _linearInterpolation(value, 0, 54, 0, 50);
      } else if (value <= 154) {
        aqi = _linearInterpolation(value, 55, 154, 51, 100);
      } else if (value <= 254) {
        aqi = _linearInterpolation(value, 155, 254, 101, 150);
      } else if (value <= 354) {
        aqi = _linearInterpolation(value, 255, 354, 151, 200);
      } else if (value <= 424) {
        aqi = _linearInterpolation(value, 355, 424, 201, 300);
      } else if (value <= 504) {
        aqi = _linearInterpolation(value, 425, 504, 301, 400);
      } else if (value <= 604) {
        aqi = _linearInterpolation(value, 505, 604, 401, 500);
      }
    } else if (component == 'no2') {
      if (value <= 53) {
        aqi = _linearInterpolation(value, 0, 53, 0, 50);
      } else if (value <= 100) {
        aqi = _linearInterpolation(value, 54, 100, 51, 100);
      } else if (value <= 360) {
        aqi = _linearInterpolation(value, 101, 360, 101, 150);
      } else if (value <= 649) {
        aqi = _linearInterpolation(value, 361, 649, 151, 200);
      } else if (value <= 1249) {
        aqi = _linearInterpolation(value, 650, 1249, 201, 300);
      } else if (value <= 1649) {
        aqi = _linearInterpolation(value, 1250, 1649, 301, 400);
      } else if (value <= 2049) {
        aqi = _linearInterpolation(value, 1650, 2049, 401, 500);
      }
    } else if (component == 'o3') {
      if (value <= 70) {
        aqi = _linearInterpolation(value, 0, 70, 0, 50);
      } else if (value <= 120) {
        aqi = _linearInterpolation(value, 71, 120, 51, 100);
      } else if (value <= 150) {
        aqi = _linearInterpolation(value, 121, 150, 101, 150);
      } else if (value <= 180) {
        aqi = _linearInterpolation(value, 151, 180, 151, 200);
      } else if (value <= 240) {
        aqi = _linearInterpolation(value, 181, 240, 201, 300);
      } else if (value <= 300) {
        aqi = _linearInterpolation(value, 241, 300, 301, 400);
      } else if (value <= 360) {
        aqi = _linearInterpolation(value, 301, 360, 401, 500);
      }
    } else if (component == 'so2') {
      if (value <= 35) {
        aqi = _linearInterpolation(value, 0, 35, 0, 50);
      } else if (value <= 75) {
        aqi = _linearInterpolation(value, 36, 75, 51, 100);
      } else if (value <= 185) {
        aqi = _linearInterpolation(value, 76, 185, 101, 150);
      } else if (value <= 304) {
        aqi = _linearInterpolation(value, 186, 304, 151, 200);
      } else if (value <= 604) {
        aqi = _linearInterpolation(value, 305, 604, 201, 300);
      } else if (value <= 804) {
        aqi = _linearInterpolation(value, 605, 804, 301, 400);
      } else if (value <= 1004) {
        aqi = _linearInterpolation(value, 805, 1004, 401, 500);
      }
    } else if (component == 'co') {
      if (value <= 4.4) {
        aqi = _linearInterpolation(value, 0, 4.4, 0, 50);
      } else if (value <= 9.4) {
        aqi = _linearInterpolation(value, 4.5, 9.4, 51, 100);
      } else if (value <= 12.4) {
        aqi = _linearInterpolation(value, 9.5, 12.4, 101, 150);
      } else if (value <= 15.4) {
        aqi = _linearInterpolation(value, 12.5, 15.4, 151, 200);
      } else if (value <= 30.4) {
        aqi = _linearInterpolation(value, 15.5, 30.4, 201, 300);
      } else if (value <= 40.4) {
        aqi = _linearInterpolation(value, 30.5, 40.4, 301, 400);
      } else if (value <= 50.4) {
        aqi = _linearInterpolation(value, 40.5, 50.4, 401, 500);
      }
    }

    return aqi;
  }

  double _linearInterpolation(double x, double x0, double x1, double y0, double y1) {
    return ((y1 - y0) / (x1 - x0)) * (x - x0) + y0;
  }

  Color _getAirQualityColor(int aqi) {
    switch (aqi) {
      case 1:
        return Colors.green;
      case 2:
        return Colors.yellow;
      case 3:
        return Colors.orange;
      case 4:
        return Colors.red;
      case 5:
        return Colors.purple;
      default:
        return Colors.blue;
    }
  }

  Color _getPM2_5Color(int value) {
    if (value < 10) {
      return Colors.green;
    } else if (value >= 10 && value < 25) {
      return Colors.yellow;
    } else if (value >= 25 && value < 50) {
      return Colors.orange;
    } else if (value >= 50 && value < 75) {
      return Colors.red;
    } else {
      return Colors.purple;
    }
  }

  Color _getPM10Color(int value) {
    if (value < 20) {
      return Colors.green;
    } else if (value >= 20 && value < 50) {
      return Colors.yellow;
    } else if (value >= 50 && value < 100) {
      return Colors.orange;
    } else if (value >= 100 && value < 200) {
      return Colors.red;
    } else {
      return Colors.purple;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.all(10.0),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Icon(
                  Icons.location_on_outlined,
                  size: 30,
                  color: Colors.blue,
                ),
                Text(
                  addressMap['address'] ?? '',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              children: <Widget>[
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Text(
                        'AQI',
                        style: TextStyle(fontSize: 16, color: _getAirQualityColor(airPollutionData.list[0].main.aqi)),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        computeAQI(airPollutionData).toString(),
                        style: TextStyle(fontSize: 24, color: _getAirQualityColor(airPollutionData.list[0].main.aqi)),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Text('PM2.5 (μg/m3)',
                          style: TextStyle(
                            fontSize: 16,
                            color: _getPM2_5Color(airPollutionData.list[0].components.pm2_5.round()),
                          )),
                      const SizedBox(height: 8),
                      Text(airPollutionData.list[0].components.pm2_5.round().toString(),
                          style: TextStyle(
                            fontSize: 24,
                            color: _getPM2_5Color(airPollutionData.list[0].components.pm2_5.round()),
                          )),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Text(
                        'PM10 (μg/m3)',
                        style: TextStyle(
                          fontSize: 16,
                          color: _getPM10Color(airPollutionData.list[0].components.pm10.round()),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(airPollutionData.list[0].components.pm10.round().toString(),
                          style: TextStyle(
                            fontSize: 24,
                            color: _getPM10Color(airPollutionData.list[0].components.pm10.round()),
                          )),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Clor',
                        style: TextStyle(
                          fontSize: 16,
                          color: _getPM10Color(airPollutionData.list[0].components.pm10.round()),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text('',
                          // waterQualityData
                          //     .firstWhere((WaterQualityData record) => record.sector == addressMap['sector'])
                          //     .clor
                          //     .toString(),
                          style: TextStyle(
                            fontSize: 24,
                            color: _getPM10Color(airPollutionData.list[0].components.pm10.round()),
                          )),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Image.asset('assets/${currentWeather.weather[0].icon}.png', width: 30, height: 30),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              ' ${currentWeather.main.temp.round()}°C',
                              style: const TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Transform.rotate(
                          angle: (currentWeather.wind.deg - 90) * pi / 180,
                          child: const Icon(
                            Icons.navigation_outlined,
                            size: 30,
                            color: Colors.blue,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            const SizedBox(width: 8),
                            Text(
                              ' ${currentWeather.wind.speed} m/s',
                              style: const TextStyle(fontSize: 16),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        const Icon(
                          Icons.water_drop_sharp,
                          size: 30,
                          color: Colors.blue,
                        ),
                        Text(
                          ' ${currentWeather.main.humidity}%',
                          style: const TextStyle(fontSize: 16),
                        ),
                      ],
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        const Icon(
                          Icons.arrow_downward_outlined,
                          size: 30,
                          color: Colors.white,
                        ),
                        Text(
                          ' ${currentWeather.main.pressure} hPa',
                          style: const TextStyle(fontSize: 16),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.traffic_outlined,
                    size: 30,
                    color:
                        flowSegmentData.currentSpeed < 0.5 * flowSegmentData.freeFlowSpeed ? Colors.red : Colors.green),
                Text(
                  ' (Actual:${flowSegmentData.currentSpeed} Ideal:${flowSegmentData.freeFlowSpeed})',
                  style: const TextStyle(fontSize: 17),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
