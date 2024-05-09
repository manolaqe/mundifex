import 'package:freezed_annotation/freezed_annotation.dart';

import '../models/app_user.dart';
import 'app_action.dart';

part 'signin_facebook.freezed.dart';

@freezed
class SignInFacebook with _$SignInFacebook implements AppAction {
  const factory SignInFacebook({
    required ActionResult result,
  }) = SignInFacebookStart;

  const factory SignInFacebook.successful(AppUser user) = SignInFacebookSuccessful;

  @Implements<ErrorAction>()
  const factory SignInFacebook.error(Object error, StackTrace stackTrace) = SignInFacebookError;
}
