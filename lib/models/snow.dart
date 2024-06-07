// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'snow.freezed.dart';
part 'snow.g.dart';

@freezed
class Snow with _$Snow {
  const factory Snow({
    @Default(0) @JsonKey(name: '1h') double the1H,
    @Default(0) @JsonKey(name: '3h') double the3H,
  }) = Snow$;

  factory Snow.fromJson(Map<String, dynamic> json) => _$SnowFromJson(Map<String, dynamic>.from(json));
}
