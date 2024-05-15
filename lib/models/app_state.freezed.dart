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
  Map<String, dynamic>? get airQualityData =>
      throw _privateConstructorUsedError;
  Map<String, dynamic>? get airTrafficData =>
      throw _privateConstructorUsedError;

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
      Map<String, dynamic>? airQualityData,
      Map<String, dynamic>? airTrafficData});

  $AppUserCopyWith<$Res>? get user;
  $LocationDataCopyWith<$Res>? get locationData;
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
    Object? airQualityData = freezed,
    Object? airTrafficData = freezed,
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
      airQualityData: freezed == airQualityData
          ? _value.airQualityData
          : airQualityData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      airTrafficData: freezed == airTrafficData
          ? _value.airTrafficData
          : airTrafficData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
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
      Map<String, dynamic>? airQualityData,
      Map<String, dynamic>? airTrafficData});

  @override
  $AppUserCopyWith<$Res>? get user;
  @override
  $LocationDataCopyWith<$Res>? get locationData;
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
    Object? airQualityData = freezed,
    Object? airTrafficData = freezed,
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
      airQualityData: freezed == airQualityData
          ? _value._airQualityData
          : airQualityData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      airTrafficData: freezed == airTrafficData
          ? _value._airTrafficData
          : airTrafficData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
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
      final Map<String, dynamic>? airQualityData,
      final Map<String, dynamic>? airTrafficData})
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
  String toString() {
    return 'AppState(user: $user, users: $users, locationData: $locationData, airQualityData: $airQualityData, airTrafficData: $airTrafficData)';
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
            const DeepCollectionEquality()
                .equals(other._airQualityData, _airQualityData) &&
            const DeepCollectionEquality()
                .equals(other._airTrafficData, _airTrafficData));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      user,
      const DeepCollectionEquality().hash(_users),
      locationData,
      const DeepCollectionEquality().hash(_airQualityData),
      const DeepCollectionEquality().hash(_airTrafficData));

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
      final Map<String, dynamic>? airQualityData,
      final Map<String, dynamic>? airTrafficData}) = _$AppState$Impl;

  factory AppState$.fromJson(Map<String, dynamic> json) =
      _$AppState$Impl.fromJson;

  @override
  AppUser? get user;
  @override
  Map<String, AppUser> get users;
  @override
  LocationData? get locationData;
  @override
  Map<String, dynamic>? get airQualityData;
  @override
  Map<String, dynamic>? get airTrafficData;
  @override
  @JsonKey(ignore: true)
  _$$AppState$ImplCopyWith<_$AppState$Impl> get copyWith =>
      throw _privateConstructorUsedError;
}
