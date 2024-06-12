import 'package:flutter/material.dart';

import '../models/water_quality_data.dart';
import 'utils.dart';

class WaterQualityCard extends StatelessWidget {
  const WaterQualityCard({super.key, required this.waterQualityData});

  final WaterQualityData waterQualityData;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: ShapeBorder.lerp(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        0.5,
      ),
      elevation: 2,
      color: ThemeData.dark().scaffoldBackgroundColor.withAlpha(150),
      margin: const EdgeInsets.all(10.0),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: <Widget>[
            Text(
              'Tap water quality in ${waterQualityData.sector.substring(0, 1).toUpperCase()}${waterQualityData.sector.substring(1)}',
              style: const TextStyle(
                fontSize: 17,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Text(
                      'PH',
                      style: TextStyle(
                        fontSize: 17,
                        color: Utils.getPHColor(double.parse(waterQualityData.ph)),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      waterQualityData.ph,
                      style: TextStyle(
                        fontSize: 17,
                        color: Utils.getPHColor(double.parse(waterQualityData.ph)),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Text(
                      'Chlorine',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                        color: Utils.getChlorineColor(double.parse(waterQualityData.clor)),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      '${waterQualityData.clor} mg/L',
                      style: TextStyle(
                        fontSize: 17,
                        color: Utils.getChlorineColor(double.parse(waterQualityData.clor)),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
