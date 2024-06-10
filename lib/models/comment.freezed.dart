// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Comment _$CommentFromJson(Map<String, dynamic> json) {
  return Comment$.fromJson(json);
}

/// @nodoc
mixin _$Comment {
  String get userId => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommentCopyWith<Comment> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentCopyWith<$Res> {
  factory $CommentCopyWith(Comment value, $Res Function(Comment) then) =
      _$CommentCopyWithImpl<$Res, Comment>;
  @useResult
  $Res call({String userId, String value});
}

/// @nodoc
class _$CommentCopyWithImpl<$Res, $Val extends Comment>
    implements $CommentCopyWith<$Res> {
  _$CommentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$Comment$ImplCopyWith<$Res> implements $CommentCopyWith<$Res> {
  factory _$$Comment$ImplCopyWith(
          _$Comment$Impl value, $Res Function(_$Comment$Impl) then) =
      __$$Comment$ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userId, String value});
}

/// @nodoc
class __$$Comment$ImplCopyWithImpl<$Res>
    extends _$CommentCopyWithImpl<$Res, _$Comment$Impl>
    implements _$$Comment$ImplCopyWith<$Res> {
  __$$Comment$ImplCopyWithImpl(
      _$Comment$Impl _value, $Res Function(_$Comment$Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? value = null,
  }) {
    return _then(_$Comment$Impl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Comment$Impl implements Comment$ {
  const _$Comment$Impl({this.userId = '', this.value = ''});

  factory _$Comment$Impl.fromJson(Map<String, dynamic> json) =>
      _$$Comment$ImplFromJson(json);

  @override
  @JsonKey()
  final String userId;
  @override
  @JsonKey()
  final String value;

  @override
  String toString() {
    return 'Comment(userId: $userId, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Comment$Impl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userId, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$Comment$ImplCopyWith<_$Comment$Impl> get copyWith =>
      __$$Comment$ImplCopyWithImpl<_$Comment$Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Comment$ImplToJson(
      this,
    );
  }
}

abstract class Comment$ implements Comment {
  const factory Comment$({final String userId, final String value}) =
      _$Comment$Impl;

  factory Comment$.fromJson(Map<String, dynamic> json) =
      _$Comment$Impl.fromJson;

  @override
  String get userId;
  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$Comment$ImplCopyWith<_$Comment$Impl> get copyWith =>
      throw _privateConstructorUsedError;
}
