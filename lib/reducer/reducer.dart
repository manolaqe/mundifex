import 'dart:developer';

import 'package:redux/redux.dart';

import '../actions/create_user.dart';
import '../actions/get_current_user.dart';
import '../actions/get_users.dart';
import '../actions/sign_out.dart';
import '../actions/signin_email_password.dart';
import '../actions/signin_facebook.dart';
import '../actions/signin_google.dart';
import '../models/app_state.dart';
import '../models/app_user.dart';

AppState reducer(AppState state, dynamic action) {
  return combineReducers<AppState>(<Reducer<AppState>>[
    TypedReducer<AppState, CreateUserSuccessful>(_createUserSuccessful).call,
    TypedReducer<AppState, GetCurrentUserSuccessful>(_getCurrentUserSuccessful).call,
    TypedReducer<AppState, SignOutSuccessful>(_signOutSuccessful).call,
    TypedReducer<AppState, SignInEmailPasswordSuccessful>(_signInEmailPasswordSuccessful).call,
    TypedReducer<AppState, SignInGoogleSuccessful>(_signInGoogleSuccessful).call,
    TypedReducer<AppState, SignInFacebookSuccessful>(_signInFacebookSuccessful).call,
    TypedReducer<AppState, GetUsersSuccessful>(_getUsersSuccessful).call,
  ])(state, action);
}

AppState _createUserSuccessful(AppState state, CreateUserSuccessful action) {
  return state.copyWith(user: action.user);
}

AppState _getCurrentUserSuccessful(AppState state, GetCurrentUserSuccessful action) {
  return state.copyWith(user: action.user);
}

AppState _signOutSuccessful(AppState state, SignOutSuccessful action) {
  return state.copyWith(user: null);
}

AppState _signInEmailPasswordSuccessful(AppState state, SignInEmailPasswordSuccessful action) {
  return state.copyWith(user: action.user);
}

AppState _getUsersSuccessful(AppState state, GetUsersSuccessful action) {
  return state.copyWith(
    users: <String, AppUser>{
      ...state.users,
      for (final AppUser user in action.users) user.userId: user,
    },
  );
}

AppState _signInGoogleSuccessful(AppState state, SignInGoogleSuccessful action) {
  return state.copyWith(user: action.user);
}

AppState _signInFacebookSuccessful(AppState state, SignInFacebookSuccessful action) {
  return state.copyWith(user: action.user);
}
