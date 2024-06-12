import 'package:freezed_annotation/freezed_annotation.dart';

import '../models/post.dart';
import 'app_action.dart';

part 'remove_like.freezed.dart';

@freezed
class RemoveLike with _$RemoveLike implements AppAction {
  const factory RemoveLike({required String selectedPostId}) = RemoveLikeStart;

  const factory RemoveLike.successful(Post post) = RemoveLikeSuccessful;

  @Implements<ErrorAction>()
  const factory RemoveLike.error(Object error, StackTrace stackTrace) = RemoveLikeError;
}
