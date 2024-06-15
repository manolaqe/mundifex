import 'package:redux/redux.dart';

import '../actions/create_user.dart';
import '../actions/get_address.dart';
import '../actions/get_air_pollution.dart';
import '../actions/get_air_pollution_forecast.dart';
import '../actions/get_current_user.dart';
import '../actions/get_flow_segment_data.dart';
import '../actions/get_forecast_weather.dart';
import '../actions/get_location.dart';
import '../actions/get_posts.dart';
import '../actions/get_users.dart';
import '../actions/get_water_quality.dart';
import '../actions/get_weather.dart';
import '../actions/set.dart';
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
    TypedReducer<AppState, GetAirPollutionStart>(_getAirPollutionStart).call,
    TypedReducer<AppState, GetAirPollutionSuccessful>(_getAirPollutionSuccessful).call,
    TypedReducer<AppState, GetAirPollutionError>(_getAirPollutionError).call,
    TypedReducer<AppState, GetFlowSegmentDataStart>(_getFlowSegmentDataStart).call,
    TypedReducer<AppState, GetFlowSegmentDataSuccessful>(_getFlowSegmentDataSuccessful).call,
    TypedReducer<AppState, GetFlowSegmentDataError>(_getFlowSegmentDataError).call,
    TypedReducer<AppState, GetWaterQualityStart>(_getWaterQualityStart).call,
    TypedReducer<AppState, GetWaterQualitySuccessful>(_getWaterQualitySuccessful).call,
    TypedReducer<AppState, GetWaterQualityError>(_getWaterQualityError).call,
    TypedReducer<AppState, GetForecastWeatherStart>(_getForecastWeatherStart).call,
    TypedReducer<AppState, GetForecastWeatherSuccessful>(_getForecastWeatherSuccessful).call,
    TypedReducer<AppState, GetForecastWeatherError>(_getForecastWeatherError).call,
    TypedReducer<AppState, GetPostsStart>(_getPostsStart).call,
    TypedReducer<AppState, GetPostsSuccessful>(_getPostsSuccessful).call,
    TypedReducer<AppState, GetPostsError>(_getPostsError).call,
    TypedReducer<AppState, SetSelectedPost>(_setSelectedPost).call,
    TypedReducer<AppState, GetAirPollutionForecastStart>(_getAirPollutionForecastStart).call,
    TypedReducer<AppState, GetAirPollutionForecastSuccessful>(_getAirPollutionForecastSuccessful).call,
    TypedReducer<AppState, GetAirPollutionForecastError>(_getAirPollutionForecastError).call,
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
  return state.copyWith(isLoading: false, addressData: action.addressData);
}

AppState _getAddressError(AppState state, GetAddressError action) {
  return state.copyWith(isLoading: false);
}

AppState _getAirPollutionStart(AppState state, GetAirPollutionStart action) {
  return state.copyWith(isLoading: true);
}

AppState _getAirPollutionSuccessful(AppState state, GetAirPollutionSuccessful action) {
  return state.copyWith(isLoading: false, airPollutionData: action.airPollutionData);
}

AppState _getAirPollutionError(AppState state, GetAirPollutionError action) {
  return state.copyWith(isLoading: false);
}

AppState _getAirPollutionForecastStart(AppState state, GetAirPollutionForecastStart action) {
  return state.copyWith(isLoading: true);
}

AppState _getAirPollutionForecastSuccessful(AppState state, GetAirPollutionForecastSuccessful action) {
  return state.copyWith(isLoading: false, airPollutionDataForecast: action.airPollutionDataForecast);
}

AppState _getAirPollutionForecastError(AppState state, GetAirPollutionForecastError action) {
  return state.copyWith(isLoading: false);
}

AppState _getFlowSegmentDataStart(AppState state, GetFlowSegmentDataStart action) {
  return state.copyWith(isLoading: true);
}

AppState _getFlowSegmentDataSuccessful(AppState state, GetFlowSegmentDataSuccessful action) {
  return state.copyWith(isLoading: false, flowSegmentData: action.flowSegmentData);
}

AppState _getFlowSegmentDataError(AppState state, GetFlowSegmentDataError action) {
  return state.copyWith(isLoading: false);
}

AppState _getWaterQualityStart(AppState state, GetWaterQualityStart action) {
  return state.copyWith(isLoading: true);
}

AppState _getWaterQualitySuccessful(AppState state, GetWaterQualitySuccessful action) {
  return state.copyWith(isLoading: false, waterQualityData: action.waterQualityData);
}

AppState _getWaterQualityError(AppState state, GetWaterQualityError action) {
  return state.copyWith(isLoading: false);
}

AppState _getForecastWeatherStart(AppState state, GetForecastWeatherStart action) {
  return state.copyWith(isLoading: false);
}

AppState _getForecastWeatherSuccessful(AppState state, GetForecastWeatherSuccessful action) {
  return state.copyWith(forecastWeather: action.forecastWeather, isLoading: false);
}

AppState _getForecastWeatherError(AppState state, GetForecastWeatherError action) {
  return state.copyWith(isLoading: false);
}

AppState _getPostsStart(AppState state, GetPostsStart action) {
  return state.copyWith(isLoading: false);
}

AppState _getPostsSuccessful(AppState state, GetPostsSuccessful action) {
  return state.copyWith(isLoading: true, posts: action.posts);
}

AppState _getPostsError(AppState state, GetPostsError action) {
  return state.copyWith(isLoading: false);
}

AppState _setSelectedPost(AppState state, SetSelectedPost action) {
  return state.copyWith(selectedPostId: action.id);
}
