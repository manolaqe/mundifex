import 'dart:math';

import 'package:flutter/material.dart';

import '../models/address_component.dart';
import '../models/address_data.dart';
import '../models/air_pollution_data.dart';
import '../models/location_data.dart';
import '../models/post.dart';
import '../models/water_quality_data.dart';

class Utils {
  static int computeAQI(AirPollutionData airPollutionData) {
    final double pm25 = airPollutionData.list[0].components.pm2_5;
    final double pm10 = airPollutionData.list[0].components.pm10;
    final double no2 = airPollutionData.list[0].components.no2;
    final double o3 = airPollutionData.list[0].components.o3;
    final double so2 = airPollutionData.list[0].components.so2;
    final double co = airPollutionData.list[0].components.co;

    List<double> aqiValues = [];

    if (pm25 > 0) {
      aqiValues.add(_calculateComponentAQI(pm25, 'pm25'));
    }
    if (pm10 > 0) {
      aqiValues.add(_calculateComponentAQI(pm10, 'pm10'));
    }
    if (no2 > 0) {
      aqiValues.add(_calculateComponentAQI(no2, 'no2'));
    }
    if (o3 > 0) {
      aqiValues.add(_calculateComponentAQI(o3, 'o3'));
    }
    if (so2 > 0) {
      aqiValues.add(_calculateComponentAQI(so2, 'so2'));
    }
    if (co > 0) {
      aqiValues.add(_calculateComponentAQI(co, 'co'));
    }

    return aqiValues.isNotEmpty ? aqiValues.reduce((a, b) => a > b ? a : b).round() : 0;
  }

  static double _calculateComponentAQI(double value, String component) {
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

  static double _linearInterpolation(double x, double x0, double x1, double y0, double y1) {
    return ((y1 - y0) / (x1 - x0)) * (x - x0) + y0;
  }

  static Color getAirQualityColor(int aqi) {
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

  static WaterQualityData getWaterQualityData(List<WaterQualityData> waterQualityData, AddressData addresData) {
    String sector = '';

    final List<AddressComponent> addressComponents = addresData.results[0].addressComponents;

    for (final AddressComponent addressComponent in addressComponents) {
      if (addressComponent.types.contains('sublocality_level_1')) {
        final String nameContainingSector = addressComponent.longName;
        final List<String> nameParts = nameContainingSector.split(' ');

        sector = 'sector ${nameParts.last}';
        break;
      }
    }

    return waterQualityData.firstWhere((WaterQualityData record) => record.sector == sector);
  }

  static Color getPM2_5Color(int value) {
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

  static Color getPM10Color(int value) {
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

  static Color getChlorineColor(double value) {
    if (value < 0.5) {
      return Colors.green;
    } else if (value >= 0.5 && value < 1) {
      return Colors.yellow;
    } else if (value >= 1 && value < 1.5) {
      return Colors.orange;
    } else if (value >= 1.5 && value < 2) {
      return Colors.red;
    } else {
      return Colors.purple;
    }
  }

  static Color getPHColor(double value) {
    if (value < 6.5) {
      return Colors.red;
    } else if (value >= 6.5 && value < 8.5) {
      return Colors.green;
    } else {
      return Colors.red;
    }
  }

  static bool isLocationInRadius(LocationData location1, LocationData location2, double radius) {
    final double lat1 = location1.lat;
    final double lon1 = location1.lon;
    final double lat2 = location2.lat;
    final double lon2 = location2.lon;

    final double distance = calculateDistance(lat1, lon1, lat2, lon2);

    return distance <= radius;
  }

  static double calculateDistance(double lat1, double lon1, double lat2, double lon2) {
    const double earthRadius = 6371000; // Earth's radius in meters

    final double dLat = _toRadians(lat2 - lat1);
    final double dLon = _toRadians(lon2 - lon1);

    final double a =
        sin(dLat / 2) * sin(dLat / 2) + cos(_toRadians(lat1)) * cos(_toRadians(lat2)) * sin(dLon / 2) * sin(dLon / 2);
    final double c = 2 * atan2(sqrt(a), sqrt(1 - a));

    final double distance = earthRadius * c;

    return distance;
  }

  static double _toRadians(double degrees) {
    return degrees * pi / 180;
  }

  static double computeAirPerception(List<Post> posts) {
    double airPerception = 0.0;
    double counter = 0.0;

    for (final Post post in posts) {
      if (post.airPerception != 0.0) {
        counter++;
        airPerception += post.airPerception;
      }
    }

    return airPerception / counter;
  }

  static double computeCleanPerception(List<Post> posts) {
    double cleanPerception = 0.0;
    double counter = 0.0;

    for (final Post post in posts) {
      if (post.cleanPerception != 0.0) {
        counter++;
        cleanPerception += post.cleanPerception;
      }
    }

    return cleanPerception / counter;
  }

  static double computeNoisePerception(List<Post> posts) {
    double noisePerception = 0.0;
    double counter = 0.0;

    for (final Post post in posts) {
      if (post.noisePerception != 0.0) {
        counter++;
        noisePerception += post.noisePerception;
      }
    }

    return noisePerception / counter;
  }
}
