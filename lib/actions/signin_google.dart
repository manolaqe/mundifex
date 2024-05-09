import 'package:freezed_annotation/freezed_annotation.dart';

import '../models/app_user.dart';
import 'app_action.dart';

part 'signin_google.freezed.dart';

@freezed
class SignInGoogle with _$SignInGoogle implements AppAction {
  const factory SignInGoogle({
    required ActionResult result,
  }) = SignInGoogleStart;

  const factory SignInGoogle.successful(AppUser user) = SignInGoogleSuccessful;

  @Implements<ErrorAction>()
  const factory SignInGoogle.error(Object error, StackTrace stackTrace) = SignInGoogleError;
}
