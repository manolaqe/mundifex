import 'package:freezed_annotation/freezed_annotation.dart';

import '../models/post.dart';
import 'app_action.dart';

part 'remove_dislike.freezed.dart';

@freezed
class RemoveDislike with _$RemoveDislike implements AppAction {
  const factory RemoveDislike({required String selectedPostId}) = RemoveDislikeStart;

  const factory RemoveDislike.successful(Post post) = RemoveDislikeSuccessful;

  @Implements<ErrorAction>()
  const factory RemoveDislike.error(Object error, StackTrace stackTrace) = RemoveDislikeError;
}
