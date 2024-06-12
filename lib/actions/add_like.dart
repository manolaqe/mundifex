import 'package:freezed_annotation/freezed_annotation.dart';

import '../models/post.dart';
import 'app_action.dart';

part 'add_like.freezed.dart';

@freezed
class AddLike with _$AddLike implements AppAction {
  const factory AddLike({required String selectedPostId}) = AddLikeStart;

  const factory AddLike.successful(Post post) = AddLikeSuccessful;

  @Implements<ErrorAction>()
  const factory AddLike.error(Object error, StackTrace stackTrace) = AddLikeError;
}
