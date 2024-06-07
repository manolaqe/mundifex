import 'package:flutter/material.dart';

import '../models/current_weather.dart';
import '../models/location_data.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({super.key, required this.locationData, required this.currentWeather, required this.address});

  final LocationData locationData;
  final CurrentWeather currentWeather;
  final String address;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.all(10.0),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Icon(
                  Icons.location_on_outlined,
                  size: 30,
                  color: Colors.white,
                ),
                Text(address),
                // _location == null
                // ? const Text('Location: unknown')
                // : Text(
                //     airQualityData['data']['city'].toString() +
                //         ", " +
                //         airQualityData['data']['state'].toString() +
                //         ", " +
                //         airQualityData['data']['country'].toString(),
                //     style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                //   ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
