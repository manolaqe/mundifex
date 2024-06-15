// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_post.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CreatePost {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<XFile> photoUrls, String description, double airSliderValue, double cleanSliderValue,
            double noiseSliderValue)
        $default, {
    required TResult Function(Post post) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(List<XFile> photoUrls, String description, double airSliderValue, double cleanSliderValue,
            double noiseSliderValue)?
        $default, {
    TResult? Function(Post post)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<XFile> photoUrls, String description, double airSliderValue, double cleanSliderValue,
            double noiseSliderValue)?
        $default, {
    TResult Function(Post post)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CreatePostStart value) $default, {
    required TResult Function(CreatePostSuccessful value) successful,
    required TResult Function(CreatePostError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(CreatePostStart value)? $default, {
    TResult? Function(CreatePostSuccessful value)? successful,
    TResult? Function(CreatePostError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CreatePostStart value)? $default, {
    TResult Function(CreatePostSuccessful value)? successful,
    TResult Function(CreatePostError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatePostCopyWith<$Res> {
  factory $CreatePostCopyWith(CreatePost value, $Res Function(CreatePost) then) =
      _$CreatePostCopyWithImpl<$Res, CreatePost>;
}

/// @nodoc
class _$CreatePostCopyWithImpl<$Res, $Val extends CreatePost> implements $CreatePostCopyWith<$Res> {
  _$CreatePostCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CreatePostStartImplCopyWith<$Res> {
  factory _$$CreatePostStartImplCopyWith(_$CreatePostStartImpl value, $Res Function(_$CreatePostStartImpl) then) =
      __$$CreatePostStartImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<XFile> photoUrls,
      String description,
      double airSliderValue,
      double cleanSliderValue,
      double noiseSliderValue});
}

/// @nodoc
class __$$CreatePostStartImplCopyWithImpl<$Res> extends _$CreatePostCopyWithImpl<$Res, _$CreatePostStartImpl>
    implements _$$CreatePostStartImplCopyWith<$Res> {
  __$$CreatePostStartImplCopyWithImpl(_$CreatePostStartImpl _value, $Res Function(_$CreatePostStartImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? photoUrls = null,
    Object? description = null,
    Object? airSliderValue = null,
    Object? cleanSliderValue = null,
    Object? noiseSliderValue = null,
  }) {
    return _then(_$CreatePostStartImpl(
      null == photoUrls
          ? _value._photoUrls
          : photoUrls // ignore: cast_nullable_to_non_nullable
              as List<XFile>,
      null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      null == airSliderValue
          ? _value.airSliderValue
          : airSliderValue // ignore: cast_nullable_to_non_nullable
              as double,
      null == cleanSliderValue
          ? _value.cleanSliderValue
          : cleanSliderValue // ignore: cast_nullable_to_non_nullable
              as double,
      null == noiseSliderValue
          ? _value.noiseSliderValue
          : noiseSliderValue // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$CreatePostStartImpl implements CreatePostStart {
  const _$CreatePostStartImpl(
      final List<XFile> photoUrls, this.description, this.airSliderValue, this.cleanSliderValue, this.noiseSliderValue)
      : _photoUrls = photoUrls;

  final List<XFile> _photoUrls;
  @override
  List<XFile> get photoUrls {
    if (_photoUrls is EqualUnmodifiableListView) return _photoUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_photoUrls);
  }

  @override
  final String description;
  @override
  final double airSliderValue;
  @override
  final double cleanSliderValue;
  @override
  final double noiseSliderValue;

  @override
  String toString() {
    return 'CreatePost(photoUrls: $photoUrls, description: $description, airSliderValue: $airSliderValue, cleanSliderValue: $cleanSliderValue, noiseSliderValue: $noiseSliderValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreatePostStartImpl &&
            const DeepCollectionEquality().equals(other._photoUrls, _photoUrls) &&
            (identical(other.description, description) || other.description == description) &&
            (identical(other.airSliderValue, airSliderValue) || other.airSliderValue == airSliderValue) &&
            (identical(other.cleanSliderValue, cleanSliderValue) || other.cleanSliderValue == cleanSliderValue) &&
            (identical(other.noiseSliderValue, noiseSliderValue) || other.noiseSliderValue == noiseSliderValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(_photoUrls), description,
      airSliderValue, cleanSliderValue, noiseSliderValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreatePostStartImplCopyWith<_$CreatePostStartImpl> get copyWith =>
      __$$CreatePostStartImplCopyWithImpl<_$CreatePostStartImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<XFile> photoUrls, String description, double airSliderValue, double cleanSliderValue,
            double noiseSliderValue)
        $default, {
    required TResult Function(Post post) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default(photoUrls, description, airSliderValue, cleanSliderValue, noiseSliderValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(List<XFile> photoUrls, String description, double airSliderValue, double cleanSliderValue,
            double noiseSliderValue)?
        $default, {
    TResult? Function(Post post)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call(photoUrls, description, airSliderValue, cleanSliderValue, noiseSliderValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<XFile> photoUrls, String description, double airSliderValue, double cleanSliderValue,
            double noiseSliderValue)?
        $default, {
    TResult Function(Post post)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(photoUrls, description, airSliderValue, cleanSliderValue, noiseSliderValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CreatePostStart value) $default, {
    required TResult Function(CreatePostSuccessful value) successful,
    required TResult Function(CreatePostError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(CreatePostStart value)? $default, {
    TResult? Function(CreatePostSuccessful value)? successful,
    TResult? Function(CreatePostError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CreatePostStart value)? $default, {
    TResult Function(CreatePostSuccessful value)? successful,
    TResult Function(CreatePostError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class CreatePostStart implements CreatePost {
  const factory CreatePostStart(final List<XFile> photoUrls, final String description, final double airSliderValue,
      final double cleanSliderValue, final double noiseSliderValue) = _$CreatePostStartImpl;

  List<XFile> get photoUrls;
  String get description;
  double get airSliderValue;
  double get cleanSliderValue;
  double get noiseSliderValue;
  @JsonKey(ignore: true)
  _$$CreatePostStartImplCopyWith<_$CreatePostStartImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreatePostSuccessfulImplCopyWith<$Res> {
  factory _$$CreatePostSuccessfulImplCopyWith(
          _$CreatePostSuccessfulImpl value, $Res Function(_$CreatePostSuccessfulImpl) then) =
      __$$CreatePostSuccessfulImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Post post});

  $PostCopyWith<$Res> get post;
}

/// @nodoc
class __$$CreatePostSuccessfulImplCopyWithImpl<$Res> extends _$CreatePostCopyWithImpl<$Res, _$CreatePostSuccessfulImpl>
    implements _$$CreatePostSuccessfulImplCopyWith<$Res> {
  __$$CreatePostSuccessfulImplCopyWithImpl(
      _$CreatePostSuccessfulImpl _value, $Res Function(_$CreatePostSuccessfulImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? post = null,
  }) {
    return _then(_$CreatePostSuccessfulImpl(
      null == post
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as Post,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $PostCopyWith<$Res> get post {
    return $PostCopyWith<$Res>(_value.post, (value) {
      return _then(_value.copyWith(post: value));
    });
  }
}

/// @nodoc

class _$CreatePostSuccessfulImpl implements CreatePostSuccessful {
  const _$CreatePostSuccessfulImpl(this.post);

  @override
  final Post post;

  @override
  String toString() {
    return 'CreatePost.successful(post: $post)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreatePostSuccessfulImpl &&
            (identical(other.post, post) || other.post == post));
  }

  @override
  int get hashCode => Object.hash(runtimeType, post);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreatePostSuccessfulImplCopyWith<_$CreatePostSuccessfulImpl> get copyWith =>
      __$$CreatePostSuccessfulImplCopyWithImpl<_$CreatePostSuccessfulImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<XFile> photoUrls, String description, double airSliderValue, double cleanSliderValue,
            double noiseSliderValue)
        $default, {
    required TResult Function(Post post) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(post);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(List<XFile> photoUrls, String description, double airSliderValue, double cleanSliderValue,
            double noiseSliderValue)?
        $default, {
    TResult? Function(Post post)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call(post);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<XFile> photoUrls, String description, double airSliderValue, double cleanSliderValue,
            double noiseSliderValue)?
        $default, {
    TResult Function(Post post)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(post);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CreatePostStart value) $default, {
    required TResult Function(CreatePostSuccessful value) successful,
    required TResult Function(CreatePostError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(CreatePostStart value)? $default, {
    TResult? Function(CreatePostSuccessful value)? successful,
    TResult? Function(CreatePostError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CreatePostStart value)? $default, {
    TResult Function(CreatePostSuccessful value)? successful,
    TResult Function(CreatePostError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class CreatePostSuccessful implements CreatePost {
  const factory CreatePostSuccessful(final Post post) = _$CreatePostSuccessfulImpl;

  Post get post;
  @JsonKey(ignore: true)
  _$$CreatePostSuccessfulImplCopyWith<_$CreatePostSuccessfulImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreatePostErrorImplCopyWith<$Res> {
  factory _$$CreatePostErrorImplCopyWith(_$CreatePostErrorImpl value, $Res Function(_$CreatePostErrorImpl) then) =
      __$$CreatePostErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$CreatePostErrorImplCopyWithImpl<$Res> extends _$CreatePostCopyWithImpl<$Res, _$CreatePostErrorImpl>
    implements _$$CreatePostErrorImplCopyWith<$Res> {
  __$$CreatePostErrorImplCopyWithImpl(_$CreatePostErrorImpl _value, $Res Function(_$CreatePostErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$CreatePostErrorImpl(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$CreatePostErrorImpl implements CreatePostError {
  const _$CreatePostErrorImpl(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'CreatePost.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreatePostErrorImpl &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) || other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreatePostErrorImplCopyWith<_$CreatePostErrorImpl> get copyWith =>
      __$$CreatePostErrorImplCopyWithImpl<_$CreatePostErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<XFile> photoUrls, String description, double airSliderValue, double cleanSliderValue,
            double noiseSliderValue)
        $default, {
    required TResult Function(Post post) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(List<XFile> photoUrls, String description, double airSliderValue, double cleanSliderValue,
            double noiseSliderValue)?
        $default, {
    TResult? Function(Post post)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<XFile> photoUrls, String description, double airSliderValue, double cleanSliderValue,
            double noiseSliderValue)?
        $default, {
    TResult Function(Post post)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CreatePostStart value) $default, {
    required TResult Function(CreatePostSuccessful value) successful,
    required TResult Function(CreatePostError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(CreatePostStart value)? $default, {
    TResult? Function(CreatePostSuccessful value)? successful,
    TResult? Function(CreatePostError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CreatePostStart value)? $default, {
    TResult Function(CreatePostSuccessful value)? successful,
    TResult Function(CreatePostError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CreatePostError implements CreatePost, ErrorAction {
  const factory CreatePostError(final Object error, final StackTrace stackTrace) = _$CreatePostErrorImpl;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$CreatePostErrorImplCopyWith<_$CreatePostErrorImpl> get copyWith => throw _privateConstructorUsedError;
}
