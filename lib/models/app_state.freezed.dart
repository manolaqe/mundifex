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
  String? get selectedPostId => throw _privateConstructorUsedError;
  Map<String, AppUser>? get users => throw _privateConstructorUsedError;
  LocationData? get locationData => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  AirPollutionData? get airPollutionData => throw _privateConstructorUsedError;
  Map<String, dynamic>? get airTrafficData =>
      throw _privateConstructorUsedError;
  CurrentWeather? get weatherData => throw _privateConstructorUsedError;
  AddressData? get addressData => throw _privateConstructorUsedError;
  FlowSegmentData? get flowSegmentData => throw _privateConstructorUsedError;
  List<WaterQualityData>? get waterQualityData =>
      throw _privateConstructorUsedError;
  ForecastWeather? get forecastWeather => throw _privateConstructorUsedError;
  List<Post> get posts => throw _privateConstructorUsedError;

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
      String? selectedPostId,
      Map<String, AppUser>? users,
      LocationData? locationData,
      bool isLoading,
      AirPollutionData? airPollutionData,
      Map<String, dynamic>? airTrafficData,
      CurrentWeather? weatherData,
      AddressData? addressData,
      FlowSegmentData? flowSegmentData,
      List<WaterQualityData>? waterQualityData,
      ForecastWeather? forecastWeather,
      List<Post> posts});

  $AppUserCopyWith<$Res>? get user;
  $LocationDataCopyWith<$Res>? get locationData;
  $AirPollutionDataCopyWith<$Res>? get airPollutionData;
  $CurrentWeatherCopyWith<$Res>? get weatherData;
  $AddressDataCopyWith<$Res>? get addressData;
  $FlowSegmentDataCopyWith<$Res>? get flowSegmentData;
  $ForecastWeatherCopyWith<$Res>? get forecastWeather;
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
    Object? selectedPostId = freezed,
    Object? users = freezed,
    Object? locationData = freezed,
    Object? isLoading = null,
    Object? airPollutionData = freezed,
    Object? airTrafficData = freezed,
    Object? weatherData = freezed,
    Object? addressData = freezed,
    Object? flowSegmentData = freezed,
    Object? waterQualityData = freezed,
    Object? forecastWeather = freezed,
    Object? posts = null,
  }) {
    return _then(_value.copyWith(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AppUser?,
      selectedPostId: freezed == selectedPostId
          ? _value.selectedPostId
          : selectedPostId // ignore: cast_nullable_to_non_nullable
              as String?,
      users: freezed == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as Map<String, AppUser>?,
      locationData: freezed == locationData
          ? _value.locationData
          : locationData // ignore: cast_nullable_to_non_nullable
              as LocationData?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      airPollutionData: freezed == airPollutionData
          ? _value.airPollutionData
          : airPollutionData // ignore: cast_nullable_to_non_nullable
              as AirPollutionData?,
      airTrafficData: freezed == airTrafficData
          ? _value.airTrafficData
          : airTrafficData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      weatherData: freezed == weatherData
          ? _value.weatherData
          : weatherData // ignore: cast_nullable_to_non_nullable
              as CurrentWeather?,
      addressData: freezed == addressData
          ? _value.addressData
          : addressData // ignore: cast_nullable_to_non_nullable
              as AddressData?,
      flowSegmentData: freezed == flowSegmentData
          ? _value.flowSegmentData
          : flowSegmentData // ignore: cast_nullable_to_non_nullable
              as FlowSegmentData?,
      waterQualityData: freezed == waterQualityData
          ? _value.waterQualityData
          : waterQualityData // ignore: cast_nullable_to_non_nullable
              as List<WaterQualityData>?,
      forecastWeather: freezed == forecastWeather
          ? _value.forecastWeather
          : forecastWeather // ignore: cast_nullable_to_non_nullable
              as ForecastWeather?,
      posts: null == posts
          ? _value.posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<Post>,
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
  $AirPollutionDataCopyWith<$Res>? get airPollutionData {
    if (_value.airPollutionData == null) {
      return null;
    }

    return $AirPollutionDataCopyWith<$Res>(_value.airPollutionData!, (value) {
      return _then(_value.copyWith(airPollutionData: value) as $Val);
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

  @override
  @pragma('vm:prefer-inline')
  $AddressDataCopyWith<$Res>? get addressData {
    if (_value.addressData == null) {
      return null;
    }

    return $AddressDataCopyWith<$Res>(_value.addressData!, (value) {
      return _then(_value.copyWith(addressData: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $FlowSegmentDataCopyWith<$Res>? get flowSegmentData {
    if (_value.flowSegmentData == null) {
      return null;
    }

    return $FlowSegmentDataCopyWith<$Res>(_value.flowSegmentData!, (value) {
      return _then(_value.copyWith(flowSegmentData: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ForecastWeatherCopyWith<$Res>? get forecastWeather {
    if (_value.forecastWeather == null) {
      return null;
    }

    return $ForecastWeatherCopyWith<$Res>(_value.forecastWeather!, (value) {
      return _then(_value.copyWith(forecastWeather: value) as $Val);
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
      String? selectedPostId,
      Map<String, AppUser>? users,
      LocationData? locationData,
      bool isLoading,
      AirPollutionData? airPollutionData,
      Map<String, dynamic>? airTrafficData,
      CurrentWeather? weatherData,
      AddressData? addressData,
      FlowSegmentData? flowSegmentData,
      List<WaterQualityData>? waterQualityData,
      ForecastWeather? forecastWeather,
      List<Post> posts});

  @override
  $AppUserCopyWith<$Res>? get user;
  @override
  $LocationDataCopyWith<$Res>? get locationData;
  @override
  $AirPollutionDataCopyWith<$Res>? get airPollutionData;
  @override
  $CurrentWeatherCopyWith<$Res>? get weatherData;
  @override
  $AddressDataCopyWith<$Res>? get addressData;
  @override
  $FlowSegmentDataCopyWith<$Res>? get flowSegmentData;
  @override
  $ForecastWeatherCopyWith<$Res>? get forecastWeather;
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
    Object? selectedPostId = freezed,
    Object? users = freezed,
    Object? locationData = freezed,
    Object? isLoading = null,
    Object? airPollutionData = freezed,
    Object? airTrafficData = freezed,
    Object? weatherData = freezed,
    Object? addressData = freezed,
    Object? flowSegmentData = freezed,
    Object? waterQualityData = freezed,
    Object? forecastWeather = freezed,
    Object? posts = null,
  }) {
    return _then(_$AppState$Impl(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AppUser?,
      selectedPostId: freezed == selectedPostId
          ? _value.selectedPostId
          : selectedPostId // ignore: cast_nullable_to_non_nullable
              as String?,
      users: freezed == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as Map<String, AppUser>?,
      locationData: freezed == locationData
          ? _value.locationData
          : locationData // ignore: cast_nullable_to_non_nullable
              as LocationData?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      airPollutionData: freezed == airPollutionData
          ? _value.airPollutionData
          : airPollutionData // ignore: cast_nullable_to_non_nullable
              as AirPollutionData?,
      airTrafficData: freezed == airTrafficData
          ? _value._airTrafficData
          : airTrafficData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      weatherData: freezed == weatherData
          ? _value.weatherData
          : weatherData // ignore: cast_nullable_to_non_nullable
              as CurrentWeather?,
      addressData: freezed == addressData
          ? _value.addressData
          : addressData // ignore: cast_nullable_to_non_nullable
              as AddressData?,
      flowSegmentData: freezed == flowSegmentData
          ? _value.flowSegmentData
          : flowSegmentData // ignore: cast_nullable_to_non_nullable
              as FlowSegmentData?,
      waterQualityData: freezed == waterQualityData
          ? _value._waterQualityData
          : waterQualityData // ignore: cast_nullable_to_non_nullable
              as List<WaterQualityData>?,
      forecastWeather: freezed == forecastWeather
          ? _value.forecastWeather
          : forecastWeather // ignore: cast_nullable_to_non_nullable
              as ForecastWeather?,
      posts: null == posts
          ? _value._posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<Post>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppState$Impl implements AppState$ {
  const _$AppState$Impl(
      {this.user,
      this.selectedPostId,
      final Map<String, AppUser>? users,
      this.locationData,
      this.isLoading = false,
      this.airPollutionData,
      final Map<String, dynamic>? airTrafficData,
      this.weatherData,
      this.addressData,
      this.flowSegmentData,
      final List<WaterQualityData>? waterQualityData,
      this.forecastWeather,
      required final List<Post> posts})
      : _users = users,
        _airTrafficData = airTrafficData,
        _waterQualityData = waterQualityData,
        _posts = posts;

  factory _$AppState$Impl.fromJson(Map<String, dynamic> json) =>
      _$$AppState$ImplFromJson(json);

  @override
  final AppUser? user;
  @override
  final String? selectedPostId;
  final Map<String, AppUser>? _users;
  @override
  Map<String, AppUser>? get users {
    final value = _users;
    if (value == null) return null;
    if (_users is EqualUnmodifiableMapView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final LocationData? locationData;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  final AirPollutionData? airPollutionData;
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
  final AddressData? addressData;
  @override
  final FlowSegmentData? flowSegmentData;
  final List<WaterQualityData>? _waterQualityData;
  @override
  List<WaterQualityData>? get waterQualityData {
    final value = _waterQualityData;
    if (value == null) return null;
    if (_waterQualityData is EqualUnmodifiableListView)
      return _waterQualityData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final ForecastWeather? forecastWeather;
  final List<Post> _posts;
  @override
  List<Post> get posts {
    if (_posts is EqualUnmodifiableListView) return _posts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_posts);
  }

  @override
  String toString() {
    return 'AppState(user: $user, selectedPostId: $selectedPostId, users: $users, locationData: $locationData, isLoading: $isLoading, airPollutionData: $airPollutionData, airTrafficData: $airTrafficData, weatherData: $weatherData, addressData: $addressData, flowSegmentData: $flowSegmentData, waterQualityData: $waterQualityData, forecastWeather: $forecastWeather, posts: $posts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppState$Impl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.selectedPostId, selectedPostId) ||
                other.selectedPostId == selectedPostId) &&
            const DeepCollectionEquality().equals(other._users, _users) &&
            (identical(other.locationData, locationData) ||
                other.locationData == locationData) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.airPollutionData, airPollutionData) ||
                other.airPollutionData == airPollutionData) &&
            const DeepCollectionEquality()
                .equals(other._airTrafficData, _airTrafficData) &&
            (identical(other.weatherData, weatherData) ||
                other.weatherData == weatherData) &&
            (identical(other.addressData, addressData) ||
                other.addressData == addressData) &&
            (identical(other.flowSegmentData, flowSegmentData) ||
                other.flowSegmentData == flowSegmentData) &&
            const DeepCollectionEquality()
                .equals(other._waterQualityData, _waterQualityData) &&
            (identical(other.forecastWeather, forecastWeather) ||
                other.forecastWeather == forecastWeather) &&
            const DeepCollectionEquality().equals(other._posts, _posts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      user,
      selectedPostId,
      const DeepCollectionEquality().hash(_users),
      locationData,
      isLoading,
      airPollutionData,
      const DeepCollectionEquality().hash(_airTrafficData),
      weatherData,
      addressData,
      flowSegmentData,
      const DeepCollectionEquality().hash(_waterQualityData),
      forecastWeather,
      const DeepCollectionEquality().hash(_posts));

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
      final String? selectedPostId,
      final Map<String, AppUser>? users,
      final LocationData? locationData,
      final bool isLoading,
      final AirPollutionData? airPollutionData,
      final Map<String, dynamic>? airTrafficData,
      final CurrentWeather? weatherData,
      final AddressData? addressData,
      final FlowSegmentData? flowSegmentData,
      final List<WaterQualityData>? waterQualityData,
      final ForecastWeather? forecastWeather,
      required final List<Post> posts}) = _$AppState$Impl;

  factory AppState$.fromJson(Map<String, dynamic> json) =
      _$AppState$Impl.fromJson;

  @override
  AppUser? get user;
  @override
  String? get selectedPostId;
  @override
  Map<String, AppUser>? get users;
  @override
  LocationData? get locationData;
  @override
  bool get isLoading;
  @override
  AirPollutionData? get airPollutionData;
  @override
  Map<String, dynamic>? get airTrafficData;
  @override
  CurrentWeather? get weatherData;
  @override
  AddressData? get addressData;
  @override
  FlowSegmentData? get flowSegmentData;
  @override
  List<WaterQualityData>? get waterQualityData;
  @override
  ForecastWeather? get forecastWeather;
  @override
  List<Post> get posts;
  @override
  @JsonKey(ignore: true)
  _$$AppState$ImplCopyWith<_$AppState$Impl> get copyWith =>
      throw _privateConstructorUsedError;
}
