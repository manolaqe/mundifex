import 'dart:math';

import 'package:flutter/material.dart';

import '../models/address_data.dart';
import '../models/air_pollution_data.dart';
import '../models/current_weather.dart';
import '../models/flow_segment_data.dart';
import '../models/location_data.dart';
import '../models/water_quality_data.dart';
import 'utils.dart';

class InfoCard extends StatelessWidget {
  const InfoCard(
      {super.key,
      required this.locationData,
      required this.currentWeather,
      required this.addressData,
      required this.airPollutionData,
      required this.flowSegmentData,
      required this.waterQualityData});

  final LocationData locationData;
  final CurrentWeather currentWeather;
  final AddressData addressData;
  final AirPollutionData airPollutionData;
  final FlowSegmentData flowSegmentData;
  final List<WaterQualityData> waterQualityData;

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
                  addressData.results[0].formattedAddress,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Text(
                      'AQI',
                      style: TextStyle(
                          fontSize: 16,
                          color: Utils.getAirQualityColor(airPollutionData.list[0].main.aqi),
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      Utils.computeAQI(airPollutionData).toString(),
                      style: TextStyle(
                          fontSize: 16,
                          color: Utils.getAirQualityColor(airPollutionData.list[0].main.aqi),
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Text(
                      'PM2.5',
                      style: TextStyle(
                          fontSize: 16,
                          color: Utils.getPM2_5Color(airPollutionData.list[0].components.pm2_5.round()),
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      '${airPollutionData.list[0].components.pm2_5.round()} μg/m3',
                      style: TextStyle(
                          fontSize: 16,
                          color: Utils.getPM2_5Color(airPollutionData.list[0].components.pm2_5.round()),
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Text(
                      'PM10',
                      style: TextStyle(
                          fontSize: 16,
                          color: Utils.getPM10Color(airPollutionData.list[0].components.pm10.round()),
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      '${airPollutionData.list[0].components.pm10.round()} μg/m3',
                      style: TextStyle(
                          fontSize: 16,
                          color: Utils.getPM10Color(airPollutionData.list[0].components.pm10.round()),
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Text(
                      'Chlorine',
                      style: TextStyle(
                          fontSize: 16,
                          color: Utils.getChlorineColor(
                              double.parse(Utils.getWaterQualityData(waterQualityData, addressData).clor)),
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      '${Utils.getWaterQualityData(waterQualityData, addressData).clor} mg/L',
                      style: TextStyle(
                          fontSize: 16,
                          color: Utils.getChlorineColor(
                              double.parse(Utils.getWaterQualityData(waterQualityData, addressData).clor)),
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Text(
                      'PH',
                      style: TextStyle(
                          fontSize: 16,
                          color: Utils.getPHColor(
                              double.parse(Utils.getWaterQualityData(waterQualityData, addressData).ph)),
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      Utils.getWaterQualityData(waterQualityData, addressData).ph,
                      style: TextStyle(
                          fontSize: 16,
                          color: Utils.getPHColor(
                              double.parse(Utils.getWaterQualityData(waterQualityData, addressData).ph)),
                          fontWeight: FontWeight.bold),
                    ),
                  ],
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
                        Image.asset(
                          'assets/${currentWeather.weather[0].icon}.png',
                          width: 30,
                          height: 30,
                        ),
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
              children: <Widget>[
                Icon(Icons.traffic_outlined,
                    size: 30,
                    color:
                        flowSegmentData.currentSpeed < 0.5 * flowSegmentData.freeFlowSpeed ? Colors.red : Colors.green),
                if (flowSegmentData.currentSpeed < 0.3 * flowSegmentData.freeFlowSpeed)
                  Text(
                    ' (Actual:${flowSegmentData.currentSpeed.round()} Ideal:${flowSegmentData.freeFlowSpeed.round()}) - Heavy Traffic',
                    style: const TextStyle(fontSize: 17),
                  ),
                if (flowSegmentData.currentSpeed > 0.7 * flowSegmentData.freeFlowSpeed)
                  Text(
                    ' (Actual:${flowSegmentData.currentSpeed.round()} Ideal:${flowSegmentData.freeFlowSpeed.round()}) - Light Traffic',
                    style: const TextStyle(fontSize: 17),
                  )
              ],
            )
          ],
        ),
      ),
    );
  }
}
