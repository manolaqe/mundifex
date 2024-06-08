import 'package:freezed_annotation/freezed_annotation.dart';

import 'app_action.dart';

part 'get_address.freezed.dart';

@freezed
class GetAddress with _$GetAddress implements AppAction {
  const factory GetAddress() = GetAddressStart;

  const factory GetAddress.successful(Map<String, String> addressMap) = GetAddressSuccessful;

  @Implements<ErrorAction>()
  const factory GetAddress.error(Object error, StackTrace stackTrace) = GetAddressError;
}
