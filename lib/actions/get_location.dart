import 'package:freezed_annotation/freezed_annotation.dart';

import '../models/location_data.dart';
import 'app_action.dart';

part 'get_location.freezed.dart';

@freezed
class GetLocation with _$GetLocation implements AppAction {
  const factory GetLocation() = GetLocationStart;

  const factory GetLocation.successful(LocationData locationData) = GetLocationSuccessful;

  @Implements<ErrorAction>()
  const factory GetLocation.error(Object error, StackTrace stackTrace) = GetLocationError;
}
