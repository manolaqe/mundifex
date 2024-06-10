// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Post _$PostFromJson(Map<String, dynamic> json) {
  return Post$.fromJson(json);
}

/// @nodoc
mixin _$Post {
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  LocationData get location => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  List<Comment> get comments => throw _privateConstructorUsedError;
  List<String> get likes => throw _privateConstructorUsedError;
  List<String> get dislikes => throw _privateConstructorUsedError;
  List<String> get photoUrls => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostCopyWith<Post> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostCopyWith<$Res> {
  factory $PostCopyWith(Post value, $Res Function(Post) then) =
      _$PostCopyWithImpl<$Res, Post>;
  @useResult
  $Res call(
      {String id,
      String userId,
      LocationData location,
      String description,
      List<Comment> comments,
      List<String> likes,
      List<String> dislikes,
      List<String> photoUrls});

  $LocationDataCopyWith<$Res> get location;
}

/// @nodoc
class _$PostCopyWithImpl<$Res, $Val extends Post>
    implements $PostCopyWith<$Res> {
  _$PostCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? location = null,
    Object? description = null,
    Object? comments = null,
    Object? likes = null,
    Object? dislikes = null,
    Object? photoUrls = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationData,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      comments: null == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<Comment>,
      likes: null == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      dislikes: null == dislikes
          ? _value.dislikes
          : dislikes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      photoUrls: null == photoUrls
          ? _value.photoUrls
          : photoUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationDataCopyWith<$Res> get location {
    return $LocationDataCopyWith<$Res>(_value.location, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$Post$ImplCopyWith<$Res> implements $PostCopyWith<$Res> {
  factory _$$Post$ImplCopyWith(
          _$Post$Impl value, $Res Function(_$Post$Impl) then) =
      __$$Post$ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String userId,
      LocationData location,
      String description,
      List<Comment> comments,
      List<String> likes,
      List<String> dislikes,
      List<String> photoUrls});

  @override
  $LocationDataCopyWith<$Res> get location;
}

/// @nodoc
class __$$Post$ImplCopyWithImpl<$Res>
    extends _$PostCopyWithImpl<$Res, _$Post$Impl>
    implements _$$Post$ImplCopyWith<$Res> {
  __$$Post$ImplCopyWithImpl(
      _$Post$Impl _value, $Res Function(_$Post$Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? location = null,
    Object? description = null,
    Object? comments = null,
    Object? likes = null,
    Object? dislikes = null,
    Object? photoUrls = null,
  }) {
    return _then(_$Post$Impl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationData,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      comments: null == comments
          ? _value._comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<Comment>,
      likes: null == likes
          ? _value._likes
          : likes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      dislikes: null == dislikes
          ? _value._dislikes
          : dislikes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      photoUrls: null == photoUrls
          ? _value._photoUrls
          : photoUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Post$Impl implements Post$ {
  _$Post$Impl(
      {this.id = '',
      this.userId = '',
      required this.location,
      this.description = '',
      final List<Comment> comments = const <Comment>[],
      final List<String> likes = const <String>[],
      final List<String> dislikes = const <String>[],
      final List<String> photoUrls = const <String>[]})
      : _comments = comments,
        _likes = likes,
        _dislikes = dislikes,
        _photoUrls = photoUrls;

  factory _$Post$Impl.fromJson(Map<String, dynamic> json) =>
      _$$Post$ImplFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String userId;
  @override
  final LocationData location;
  @override
  @JsonKey()
  final String description;
  final List<Comment> _comments;
  @override
  @JsonKey()
  List<Comment> get comments {
    if (_comments is EqualUnmodifiableListView) return _comments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_comments);
  }

  final List<String> _likes;
  @override
  @JsonKey()
  List<String> get likes {
    if (_likes is EqualUnmodifiableListView) return _likes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_likes);
  }

  final List<String> _dislikes;
  @override
  @JsonKey()
  List<String> get dislikes {
    if (_dislikes is EqualUnmodifiableListView) return _dislikes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dislikes);
  }

  final List<String> _photoUrls;
  @override
  @JsonKey()
  List<String> get photoUrls {
    if (_photoUrls is EqualUnmodifiableListView) return _photoUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_photoUrls);
  }

  @override
  String toString() {
    return 'Post(id: $id, userId: $userId, location: $location, description: $description, comments: $comments, likes: $likes, dislikes: $dislikes, photoUrls: $photoUrls)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Post$Impl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._comments, _comments) &&
            const DeepCollectionEquality().equals(other._likes, _likes) &&
            const DeepCollectionEquality().equals(other._dislikes, _dislikes) &&
            const DeepCollectionEquality()
                .equals(other._photoUrls, _photoUrls));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      location,
      description,
      const DeepCollectionEquality().hash(_comments),
      const DeepCollectionEquality().hash(_likes),
      const DeepCollectionEquality().hash(_dislikes),
      const DeepCollectionEquality().hash(_photoUrls));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$Post$ImplCopyWith<_$Post$Impl> get copyWith =>
      __$$Post$ImplCopyWithImpl<_$Post$Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Post$ImplToJson(
      this,
    );
  }
}

abstract class Post$ implements Post {
  factory Post$(
      {final String id,
      final String userId,
      required final LocationData location,
      final String description,
      final List<Comment> comments,
      final List<String> likes,
      final List<String> dislikes,
      final List<String> photoUrls}) = _$Post$Impl;

  factory Post$.fromJson(Map<String, dynamic> json) = _$Post$Impl.fromJson;

  @override
  String get id;
  @override
  String get userId;
  @override
  LocationData get location;
  @override
  String get description;
  @override
  List<Comment> get comments;
  @override
  List<String> get likes;
  @override
  List<String> get dislikes;
  @override
  List<String> get photoUrls;
  @override
  @JsonKey(ignore: true)
  _$$Post$ImplCopyWith<_$Post$Impl> get copyWith =>
      throw _privateConstructorUsedError;
}
