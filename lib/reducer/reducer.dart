import 'package:redux/redux.dart';

import '../actions/create_user.dart';
import '../actions/get_address.dart';
import '../actions/get_current_user.dart';
import '../actions/get_location.dart';
import '../actions/get_users.dart';
import '../actions/get_weather.dart';
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
    TypedReducer<AppState, GetLocationStart>(_getLocationStart).call,
    TypedReducer<AppState, GetLocationSuccessful>(_getLocationSuccessful).call,
    TypedReducer<AppState, GetLocationError>(_getLocationError).call,
    TypedReducer<AppState, GetWeatherStart>(_getWeatherStart).call,
    TypedReducer<AppState, GetWeatherSuccessful>(_getWeatherSuccessful).call,
    TypedReducer<AppState, GetWeatherError>(_getWeatherError).call,
    TypedReducer<AppState, GetAddressStart>(_getAddressStart).call,
    TypedReducer<AppState, GetAddressSuccessful>(_getAddressSuccessfu).call,
    TypedReducer<AppState, GetAddressError>(_getAddressError).call,
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

AppState _getLocationStart(AppState state, GetLocationStart action) {
  return state.copyWith(isLoading: true);
}

AppState _getLocationSuccessful(AppState state, GetLocationSuccessful action) {
  return state.copyWith(locationData: action.locationData, isLoading: false);
}

AppState _getLocationError(AppState state, GetLocationError action) {
  return state.copyWith(isLoading: false);
}

AppState _getWeatherStart(AppState state, GetWeatherStart action) {
  return state.copyWith(isLoading: true);
}

AppState _getWeatherSuccessful(AppState state, GetWeatherSuccessful action) {
  return state.copyWith(weatherData: action.currentWeather, isLoading: false);
}

AppState _getWeatherError(AppState state, GetWeatherError action) {
  return state.copyWith(isLoading: false);
}

AppState _getAddressStart(AppState state, GetAddressStart action) {
  return state.copyWith(isLoading: true);
}

AppState _getAddressSuccessfu(AppState state, GetAddressSuccessful action) {
  return state.copyWith(isLoading: false, address: action.address);
}

AppState _getAddressError(AppState state, GetAddressError action) {
  return state.copyWith(isLoading: false, address: '');
}
