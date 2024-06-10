import 'package:flutter/material.dart';

import 'utils.dart';

class PollutantColumn extends StatelessWidget {
  const PollutantColumn({super.key, required this.name, required this.value});

  final String name;
  final double value;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(name,
            style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: name == 'PM2.5'
                    ? Utils.getPM2_5Color(value.round())
                    : name == 'PM10'
                        ? Utils.getPM10Color(value.round())
                        : Colors.white)),
        Text('$value',
            style: TextStyle(
                fontSize: 17,
                color: name == 'PM2.5'
                    ? Utils.getPM2_5Color(value.round())
                    : name == 'PM10'
                        ? Utils.getPM10Color(value.round())
                        : Colors.white)),
      ],
    );
  }
}
