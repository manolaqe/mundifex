// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AppState _$AppStateFromJson(Map<String, dynamic> json) {
  return AppState$.fromJson(json);
}

/// @nodoc
mixin _$AppState {
  AppUser? get user => throw _privateConstructorUsedError;
  Map<String, AppUser> get users => throw _privateConstructorUsedError;
  LocationData? get locationData => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  Map<String, dynamic>? get airQualityData =>
      throw _privateConstructorUsedError;
  Map<String, dynamic>? get airTrafficData =>
      throw _privateConstructorUsedError;
  CurrentWeather? get weatherData => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppStateCopyWith<AppState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res, AppState>;
  @useResult
  $Res call(
      {AppUser? user,
      Map<String, AppUser> users,
      LocationData? locationData,
      bool isLoading,
      Map<String, dynamic>? airQualityData,
      Map<String, dynamic>? airTrafficData,
      CurrentWeather? weatherData,
      String? address});

  $AppUserCopyWith<$Res>? get user;
  $LocationDataCopyWith<$Res>? get locationData;
  $CurrentWeatherCopyWith<$Res>? get weatherData;
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res, $Val extends AppState>
    implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? users = null,
    Object? locationData = freezed,
    Object? isLoading = null,
    Object? airQualityData = freezed,
    Object? airTrafficData = freezed,
    Object? weatherData = freezed,
    Object? address = freezed,
  }) {
    return _then(_value.copyWith(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AppUser?,
      users: null == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as Map<String, AppUser>,
      locationData: freezed == locationData
          ? _value.locationData
          : locationData // ignore: cast_nullable_to_non_nullable
              as LocationData?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      airQualityData: freezed == airQualityData
          ? _value.airQualityData
          : airQualityData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      airTrafficData: freezed == airTrafficData
          ? _value.airTrafficData
          : airTrafficData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      weatherData: freezed == weatherData
          ? _value.weatherData
          : weatherData // ignore: cast_nullable_to_non_nullable
              as CurrentWeather?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AppUserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $AppUserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationDataCopyWith<$Res>? get locationData {
    if (_value.locationData == null) {
      return null;
    }

    return $LocationDataCopyWith<$Res>(_value.locationData!, (value) {
      return _then(_value.copyWith(locationData: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CurrentWeatherCopyWith<$Res>? get weatherData {
    if (_value.weatherData == null) {
      return null;
    }

    return $CurrentWeatherCopyWith<$Res>(_value.weatherData!, (value) {
      return _then(_value.copyWith(weatherData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AppState$ImplCopyWith<$Res>
    implements $AppStateCopyWith<$Res> {
  factory _$$AppState$ImplCopyWith(
          _$AppState$Impl value, $Res Function(_$AppState$Impl) then) =
      __$$AppState$ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AppUser? user,
      Map<String, AppUser> users,
      LocationData? locationData,
      bool isLoading,
      Map<String, dynamic>? airQualityData,
      Map<String, dynamic>? airTrafficData,
      CurrentWeather? weatherData,
      String? address});

  @override
  $AppUserCopyWith<$Res>? get user;
  @override
  $LocationDataCopyWith<$Res>? get locationData;
  @override
  $CurrentWeatherCopyWith<$Res>? get weatherData;
}

/// @nodoc
class __$$AppState$ImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$AppState$Impl>
    implements _$$AppState$ImplCopyWith<$Res> {
  __$$AppState$ImplCopyWithImpl(
      _$AppState$Impl _value, $Res Function(_$AppState$Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? users = null,
    Object? locationData = freezed,
    Object? isLoading = null,
    Object? airQualityData = freezed,
    Object? airTrafficData = freezed,
    Object? weatherData = freezed,
    Object? address = freezed,
  }) {
    return _then(_$AppState$Impl(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AppUser?,
      users: null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as Map<String, AppUser>,
      locationData: freezed == locationData
          ? _value.locationData
          : locationData // ignore: cast_nullable_to_non_nullable
              as LocationData?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      airQualityData: freezed == airQualityData
          ? _value._airQualityData
          : airQualityData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      airTrafficData: freezed == airTrafficData
          ? _value._airTrafficData
          : airTrafficData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      weatherData: freezed == weatherData
          ? _value.weatherData
          : weatherData // ignore: cast_nullable_to_non_nullable
              as CurrentWeather?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppState$Impl implements AppState$ {
  const _$AppState$Impl(
      {this.user,
      final Map<String, AppUser> users = const <String, AppUser>{},
      this.locationData,
      this.isLoading = false,
      final Map<String, dynamic>? airQualityData,
      final Map<String, dynamic>? airTrafficData,
      this.weatherData,
      this.address})
      : _users = users,
        _airQualityData = airQualityData,
        _airTrafficData = airTrafficData;

  factory _$AppState$Impl.fromJson(Map<String, dynamic> json) =>
      _$$AppState$ImplFromJson(json);

  @override
  final AppUser? user;
  final Map<String, AppUser> _users;
  @override
  @JsonKey()
  Map<String, AppUser> get users {
    if (_users is EqualUnmodifiableMapView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_users);
  }

  @override
  final LocationData? locationData;
  @override
  @JsonKey()
  final bool isLoading;
  final Map<String, dynamic>? _airQualityData;
  @override
  Map<String, dynamic>? get airQualityData {
    final value = _airQualityData;
    if (value == null) return null;
    if (_airQualityData is EqualUnmodifiableMapView) return _airQualityData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, dynamic>? _airTrafficData;
  @override
  Map<String, dynamic>? get airTrafficData {
    final value = _airTrafficData;
    if (value == null) return null;
    if (_airTrafficData is EqualUnmodifiableMapView) return _airTrafficData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final CurrentWeather? weatherData;
  @override
  final String? address;

  @override
  String toString() {
    return 'AppState(user: $user, users: $users, locationData: $locationData, isLoading: $isLoading, airQualityData: $airQualityData, airTrafficData: $airTrafficData, weatherData: $weatherData, address: $address)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppState$Impl &&
            (identical(other.user, user) || other.user == user) &&
            const DeepCollectionEquality().equals(other._users, _users) &&
            (identical(other.locationData, locationData) ||
                other.locationData == locationData) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality()
                .equals(other._airQualityData, _airQualityData) &&
            const DeepCollectionEquality()
                .equals(other._airTrafficData, _airTrafficData) &&
            (identical(other.weatherData, weatherData) ||
                other.weatherData == weatherData) &&
            (identical(other.address, address) || other.address == address));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      user,
      const DeepCollectionEquality().hash(_users),
      locationData,
      isLoading,
      const DeepCollectionEquality().hash(_airQualityData),
      const DeepCollectionEquality().hash(_airTrafficData),
      weatherData,
      address);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppState$ImplCopyWith<_$AppState$Impl> get copyWith =>
      __$$AppState$ImplCopyWithImpl<_$AppState$Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppState$ImplToJson(
      this,
    );
  }
}

abstract class AppState$ implements AppState {
  const factory AppState$(
      {final AppUser? user,
      final Map<String, AppUser> users,
      final LocationData? locationData,
      final bool isLoading,
      final Map<String, dynamic>? airQualityData,
      final Map<String, dynamic>? airTrafficData,
      final CurrentWeather? weatherData,
      final String? address}) = _$AppState$Impl;

  factory AppState$.fromJson(Map<String, dynamic> json) =
      _$AppState$Impl.fromJson;

  @override
  AppUser? get user;
  @override
  Map<String, AppUser> get users;
  @override
  LocationData? get locationData;
  @override
  bool get isLoading;
  @override
  Map<String, dynamic>? get airQualityData;
  @override
  Map<String, dynamic>? get airTrafficData;
  @override
  CurrentWeather? get weatherData;
  @override
  String? get address;
  @override
  @JsonKey(ignore: true)
  _$$AppState$ImplCopyWith<_$AppState$Impl> get copyWith =>
      throw _privateConstructorUsedError;
}
