// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address_component.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AddressComponent _$AddressComponentFromJson(Map<String, dynamic> json) {
  return AddressComponent$.fromJson(json);
}

/// @nodoc
mixin _$AddressComponent {
  @JsonKey(name: 'long_name')
  String get longName => throw _privateConstructorUsedError;
  @JsonKey(name: 'short_name')
  String get shortName => throw _privateConstructorUsedError;
  List<String> get types => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddressComponentCopyWith<AddressComponent> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressComponentCopyWith<$Res> {
  factory $AddressComponentCopyWith(AddressComponent value, $Res Function(AddressComponent) then) =
      _$AddressComponentCopyWithImpl<$Res, AddressComponent>;
  @useResult
  $Res call(
      {@JsonKey(name: 'long_name') String longName, @JsonKey(name: 'short_name') String shortName, List<String> types});
}

/// @nodoc
class _$AddressComponentCopyWithImpl<$Res, $Val extends AddressComponent> implements $AddressComponentCopyWith<$Res> {
  _$AddressComponentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? longName = null,
    Object? shortName = null,
    Object? types = null,
  }) {
    return _then(_value.copyWith(
      longName: null == longName
          ? _value.longName
          : longName // ignore: cast_nullable_to_non_nullable
              as String,
      shortName: null == shortName
          ? _value.shortName
          : shortName // ignore: cast_nullable_to_non_nullable
              as String,
      types: null == types
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddressComponent$ImplCopyWith<$Res> implements $AddressComponentCopyWith<$Res> {
  factory _$$AddressComponent$ImplCopyWith(_$AddressComponent$Impl value, $Res Function(_$AddressComponent$Impl) then) =
      __$$AddressComponent$ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'long_name') String longName, @JsonKey(name: 'short_name') String shortName, List<String> types});
}

/// @nodoc
class __$$AddressComponent$ImplCopyWithImpl<$Res> extends _$AddressComponentCopyWithImpl<$Res, _$AddressComponent$Impl>
    implements _$$AddressComponent$ImplCopyWith<$Res> {
  __$$AddressComponent$ImplCopyWithImpl(_$AddressComponent$Impl _value, $Res Function(_$AddressComponent$Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? longName = null,
    Object? shortName = null,
    Object? types = null,
  }) {
    return _then(_$AddressComponent$Impl(
      longName: null == longName
          ? _value.longName
          : longName // ignore: cast_nullable_to_non_nullable
              as String,
      shortName: null == shortName
          ? _value.shortName
          : shortName // ignore: cast_nullable_to_non_nullable
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
class _$AddressComponent$Impl implements AddressComponent$ {
  const _$AddressComponent$Impl(
      {@JsonKey(name: 'long_name') this.longName = '',
      @JsonKey(name: 'short_name') this.shortName = '',
      final List<String> types = const <String>[]})
      : _types = types;

  factory _$AddressComponent$Impl.fromJson(Map<String, dynamic> json) => _$$AddressComponent$ImplFromJson(json);

  @override
  @JsonKey(name: 'long_name')
  final String longName;
  @override
  @JsonKey(name: 'short_name')
  final String shortName;
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
    return 'AddressComponent(longName: $longName, shortName: $shortName, types: $types)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressComponent$Impl &&
            (identical(other.longName, longName) || other.longName == longName) &&
            (identical(other.shortName, shortName) || other.shortName == shortName) &&
            const DeepCollectionEquality().equals(other._types, _types));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, longName, shortName, const DeepCollectionEquality().hash(_types));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressComponent$ImplCopyWith<_$AddressComponent$Impl> get copyWith =>
      __$$AddressComponent$ImplCopyWithImpl<_$AddressComponent$Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddressComponent$ImplToJson(
      this,
    );
  }
}

abstract class AddressComponent$ implements AddressComponent {
  const factory AddressComponent$(
      {@JsonKey(name: 'long_name') final String longName,
      @JsonKey(name: 'short_name') final String shortName,
      final List<String> types}) = _$AddressComponent$Impl;

  factory AddressComponent$.fromJson(Map<String, dynamic> json) = _$AddressComponent$Impl.fromJson;

  @override
  @JsonKey(name: 'long_name')
  String get longName;
  @override
  @JsonKey(name: 'short_name')
  String get shortName;
  @override
  List<String> get types;
  @override
  @JsonKey(ignore: true)
  _$$AddressComponent$ImplCopyWith<_$AddressComponent$Impl> get copyWith => throw _privateConstructorUsedError;
}
