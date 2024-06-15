import 'package:freezed_annotation/freezed_annotation.dart';

import '../models/app_user.dart';
import 'app_action.dart';

part 'signin_email_password.freezed.dart';

@freezed
class SignInEmailPassword with _$SignInEmailPassword implements AppAction {
  const factory SignInEmailPassword({
    required String email,
    required String password,
    required ActionResult result,
  }) = SignInEmailPasswordStart;

  const factory SignInEmailPassword.successful(AppUser user) = SignInEmailPasswordSuccessful;

  @Implements<ErrorAction>()
  const factory SignInEmailPassword.error(Object error, StackTrace stackTrace) = SignInEmailPasswordError;
}
