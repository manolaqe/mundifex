import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_pollution.freezed.dart';
part 'main_pollution.g.dart';

@freezed
class MainPollution with _$MainPollution {
  const factory MainPollution({
    @Default(0) int aqi,
  }) = MainPollution$;

  factory MainPollution.fromJson(Map<String, dynamic> json) => _$MainPollutionFromJson(Map<String, dynamic>.from(json));
}
