// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AddressResult _$AddressResultFromJson(Map<String, dynamic> json) {
  return AddressResult$.fromJson(json);
}

/// @nodoc
mixin _$AddressResult {
  @JsonKey(name: 'address_components')
  List<AddressComponent> get addressComponents => throw _privateConstructorUsedError;
  @JsonKey(name: 'formatted_address')
  String get formattedAddress => throw _privateConstructorUsedError;
  Geometry get geometry => throw _privateConstructorUsedError;
  @JsonKey(name: 'place_id')
  String get placeId => throw _privateConstructorUsedError;
  List<String> get types => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddressResultCopyWith<AddressResult> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressResultCopyWith<$Res> {
  factory $AddressResultCopyWith(AddressResult value, $Res Function(AddressResult) then) =
      _$AddressResultCopyWithImpl<$Res, AddressResult>;
  @useResult
  $Res call(
      {@JsonKey(name: 'address_components') List<AddressComponent> addressComponents,
      @JsonKey(name: 'formatted_address') String formattedAddress,
      Geometry geometry,
      @JsonKey(name: 'place_id') String placeId,
      List<String> types});

  $GeometryCopyWith<$Res> get geometry;
}

/// @nodoc
class _$AddressResultCopyWithImpl<$Res, $Val extends AddressResult> implements $AddressResultCopyWith<$Res> {
  _$AddressResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addressComponents = null,
    Object? formattedAddress = null,
    Object? geometry = null,
    Object? placeId = null,
    Object? types = null,
  }) {
    return _then(_value.copyWith(
      addressComponents: null == addressComponents
          ? _value.addressComponents
          : addressComponents // ignore: cast_nullable_to_non_nullable
              as List<AddressComponent>,
      formattedAddress: null == formattedAddress
          ? _value.formattedAddress
          : formattedAddress // ignore: cast_nullable_to_non_nullable
              as String,
      geometry: null == geometry
          ? _value.geometry
          : geometry // ignore: cast_nullable_to_non_nullable
              as Geometry,
      placeId: null == placeId
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as String,
      types: null == types
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GeometryCopyWith<$Res> get geometry {
    return $GeometryCopyWith<$Res>(_value.geometry, (value) {
      return _then(_value.copyWith(geometry: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AddressResult$ImplCopyWith<$Res> implements $AddressResultCopyWith<$Res> {
  factory _$$AddressResult$ImplCopyWith(_$AddressResult$Impl value, $Res Function(_$AddressResult$Impl) then) =
      __$$AddressResult$ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'address_components') List<AddressComponent> addressComponents,
      @JsonKey(name: 'formatted_address') String formattedAddress,
      Geometry geometry,
      @JsonKey(name: 'place_id') String placeId,
      List<String> types});

  @override
  $GeometryCopyWith<$Res> get geometry;
}

/// @nodoc
class __$$AddressResult$ImplCopyWithImpl<$Res> extends _$AddressResultCopyWithImpl<$Res, _$AddressResult$Impl>
    implements _$$AddressResult$ImplCopyWith<$Res> {
  __$$AddressResult$ImplCopyWithImpl(_$AddressResult$Impl _value, $Res Function(_$AddressResult$Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addressComponents = null,
    Object? formattedAddress = null,
    Object? geometry = null,
    Object? placeId = null,
    Object? types = null,
  }) {
    return _then(_$AddressResult$Impl(
      addressComponents: null == addressComponents
          ? _value._addressComponents
          : addressComponents // ignore: cast_nullable_to_non_nullable
              as List<AddressComponent>,
      formattedAddress: null == formattedAddress
          ? _value.formattedAddress
          : formattedAddress // ignore: cast_nullable_to_non_nullable
              as String,
      geometry: null == geometry
          ? _value.geometry
          : geometry // ignore: cast_nullable_to_non_nullable
              as Geometry,
      placeId: null == placeId
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as String,
      types: null == types
          ? _value._types
          : types // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddressResult$Impl implements AddressResult$ {
  const _$AddressResult$Impl(
      {@JsonKey(name: 'address_components') final List<AddressComponent> addressComponents = const <AddressComponent>[],
      @JsonKey(name: 'formatted_address') this.formattedAddress = '',
      required this.geometry,
      @JsonKey(name: 'place_id') this.placeId = '',
      final List<String> types = const <String>[]})
      : _addressComponents = addressComponents,
        _types = types;

  factory _$AddressResult$Impl.fromJson(Map<String, dynamic> json) => _$$AddressResult$ImplFromJson(json);

  final List<AddressComponent> _addressComponents;
  @override
  @JsonKey(name: 'address_components')
  List<AddressComponent> get addressComponents {
    if (_addressComponents is EqualUnmodifiableListView) return _addressComponents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_addressComponents);
  }

  @override
  @JsonKey(name: 'formatted_address')
  final String formattedAddress;
  @override
  final Geometry geometry;
  @override
  @JsonKey(name: 'place_id')
  final String placeId;
  final List<String> _types;
  @override
  @JsonKey()
  List<String> get types {
    if (_types is EqualUnmodifiableListView) return _types;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_types);
  }

  @override
  String toString() {
    return 'AddressResult(addressComponents: $addressComponents, formattedAddress: $formattedAddress, geometry: $geometry, placeId: $placeId, types: $types)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressResult$Impl &&
            const DeepCollectionEquality().equals(other._addressComponents, _addressComponents) &&
            (identical(other.formattedAddress, formattedAddress) || other.formattedAddress == formattedAddress) &&
            (identical(other.geometry, geometry) || other.geometry == geometry) &&
            (identical(other.placeId, placeId) || other.placeId == placeId) &&
            const DeepCollectionEquality().equals(other._types, _types));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(_addressComponents),
      formattedAddress, geometry, placeId, const DeepCollectionEquality().hash(_types));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressResult$ImplCopyWith<_$AddressResult$Impl> get copyWith =>
      __$$AddressResult$ImplCopyWithImpl<_$AddressResult$Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddressResult$ImplToJson(
      this,
    );
  }
}

abstract class AddressResult$ implements AddressResult {
  const factory AddressResult$(
      {@JsonKey(name: 'address_components') final List<AddressComponent> addressComponents,
      @JsonKey(name: 'formatted_address') final String formattedAddress,
      required final Geometry geometry,
      @JsonKey(name: 'place_id') final String placeId,
      final List<String> types}) = _$AddressResult$Impl;

  factory AddressResult$.fromJson(Map<String, dynamic> json) = _$AddressResult$Impl.fromJson;

  @override
  @JsonKey(name: 'address_components')
  List<AddressComponent> get addressComponents;
  @override
  @JsonKey(name: 'formatted_address')
  String get formattedAddress;
  @override
  Geometry get geometry;
  @override
  @JsonKey(name: 'place_id')
  String get placeId;
  @override
  List<String> get types;
  @override
  @JsonKey(ignore: true)
  _$$AddressResult$ImplCopyWith<_$AddressResult$Impl> get copyWith => throw _privateConstructorUsedError;
}
