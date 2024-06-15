// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_posts.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GetPosts {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(List<Post> posts) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(List<Post> posts)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(List<Post> posts)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetPostsStart value) $default, {
    required TResult Function(GetPostsSuccessful value) successful,
    required TResult Function(GetPostsError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetPostsStart value)? $default, {
    TResult? Function(GetPostsSuccessful value)? successful,
    TResult? Function(GetPostsError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetPostsStart value)? $default, {
    TResult Function(GetPostsSuccessful value)? successful,
    TResult Function(GetPostsError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetPostsCopyWith<$Res> {
  factory $GetPostsCopyWith(GetPosts value, $Res Function(GetPosts) then) = _$GetPostsCopyWithImpl<$Res, GetPosts>;
}

/// @nodoc
class _$GetPostsCopyWithImpl<$Res, $Val extends GetPosts> implements $GetPostsCopyWith<$Res> {
  _$GetPostsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetPostsStartImplCopyWith<$Res> {
  factory _$$GetPostsStartImplCopyWith(_$GetPostsStartImpl value, $Res Function(_$GetPostsStartImpl) then) =
      __$$GetPostsStartImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetPostsStartImplCopyWithImpl<$Res> extends _$GetPostsCopyWithImpl<$Res, _$GetPostsStartImpl>
    implements _$$GetPostsStartImplCopyWith<$Res> {
  __$$GetPostsStartImplCopyWithImpl(_$GetPostsStartImpl _value, $Res Function(_$GetPostsStartImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetPostsStartImpl implements GetPostsStart {
  const _$GetPostsStartImpl();

  @override
  String toString() {
    return 'GetPosts()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$GetPostsStartImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(List<Post> posts) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(List<Post> posts)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(List<Post> posts)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetPostsStart value) $default, {
    required TResult Function(GetPostsSuccessful value) successful,
    required TResult Function(GetPostsError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetPostsStart value)? $default, {
    TResult? Function(GetPostsSuccessful value)? successful,
    TResult? Function(GetPostsError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetPostsStart value)? $default, {
    TResult Function(GetPostsSuccessful value)? successful,
    TResult Function(GetPostsError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class GetPostsStart implements GetPosts {
  const factory GetPostsStart() = _$GetPostsStartImpl;
}

/// @nodoc
abstract class _$$GetPostsSuccessfulImplCopyWith<$Res> {
  factory _$$GetPostsSuccessfulImplCopyWith(
          _$GetPostsSuccessfulImpl value, $Res Function(_$GetPostsSuccessfulImpl) then) =
      __$$GetPostsSuccessfulImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Post> posts});
}

/// @nodoc
class __$$GetPostsSuccessfulImplCopyWithImpl<$Res> extends _$GetPostsCopyWithImpl<$Res, _$GetPostsSuccessfulImpl>
    implements _$$GetPostsSuccessfulImplCopyWith<$Res> {
  __$$GetPostsSuccessfulImplCopyWithImpl(_$GetPostsSuccessfulImpl _value, $Res Function(_$GetPostsSuccessfulImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? posts = null,
  }) {
    return _then(_$GetPostsSuccessfulImpl(
      null == posts
          ? _value._posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<Post>,
    ));
  }
}

/// @nodoc

class _$GetPostsSuccessfulImpl implements GetPostsSuccessful {
  const _$GetPostsSuccessfulImpl(final List<Post> posts) : _posts = posts;

  final List<Post> _posts;
  @override
  List<Post> get posts {
    if (_posts is EqualUnmodifiableListView) return _posts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_posts);
  }

  @override
  String toString() {
    return 'GetPosts.successful(posts: $posts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPostsSuccessfulImpl &&
            const DeepCollectionEquality().equals(other._posts, _posts));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(_posts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPostsSuccessfulImplCopyWith<_$GetPostsSuccessfulImpl> get copyWith =>
      __$$GetPostsSuccessfulImplCopyWithImpl<_$GetPostsSuccessfulImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(List<Post> posts) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(posts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(List<Post> posts)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call(posts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(List<Post> posts)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(posts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetPostsStart value) $default, {
    required TResult Function(GetPostsSuccessful value) successful,
    required TResult Function(GetPostsError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetPostsStart value)? $default, {
    TResult? Function(GetPostsSuccessful value)? successful,
    TResult? Function(GetPostsError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetPostsStart value)? $default, {
    TResult Function(GetPostsSuccessful value)? successful,
    TResult Function(GetPostsError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class GetPostsSuccessful implements GetPosts {
  const factory GetPostsSuccessful(final List<Post> posts) = _$GetPostsSuccessfulImpl;

  List<Post> get posts;
  @JsonKey(ignore: true)
  _$$GetPostsSuccessfulImplCopyWith<_$GetPostsSuccessfulImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetPostsErrorImplCopyWith<$Res> {
  factory _$$GetPostsErrorImplCopyWith(_$GetPostsErrorImpl value, $Res Function(_$GetPostsErrorImpl) then) =
      __$$GetPostsErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$GetPostsErrorImplCopyWithImpl<$Res> extends _$GetPostsCopyWithImpl<$Res, _$GetPostsErrorImpl>
    implements _$$GetPostsErrorImplCopyWith<$Res> {
  __$$GetPostsErrorImplCopyWithImpl(_$GetPostsErrorImpl _value, $Res Function(_$GetPostsErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$GetPostsErrorImpl(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$GetPostsErrorImpl implements GetPostsError {
  const _$GetPostsErrorImpl(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'GetPosts.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPostsErrorImpl &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) || other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPostsErrorImplCopyWith<_$GetPostsErrorImpl> get copyWith =>
      __$$GetPostsErrorImplCopyWithImpl<_$GetPostsErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(List<Post> posts) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(List<Post> posts)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(List<Post> posts)? successful,
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
    TResult Function(GetPostsStart value) $default, {
    required TResult Function(GetPostsSuccessful value) successful,
    required TResult Function(GetPostsError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetPostsStart value)? $default, {
    TResult? Function(GetPostsSuccessful value)? successful,
    TResult? Function(GetPostsError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetPostsStart value)? $default, {
    TResult Function(GetPostsSuccessful value)? successful,
    TResult Function(GetPostsError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetPostsError implements GetPosts, ErrorAction {
  const factory GetPostsError(final Object error, final StackTrace stackTrace) = _$GetPostsErrorImpl;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$GetPostsErrorImplCopyWith<_$GetPostsErrorImpl> get copyWith => throw _privateConstructorUsedError;
}
