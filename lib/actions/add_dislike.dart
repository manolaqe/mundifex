import 'package:freezed_annotation/freezed_annotation.dart';

import '../models/post.dart';
import 'app_action.dart';

part 'add_dislike.freezed.dart';

@freezed
class AddDislike with _$AddDislike implements AppAction {
  const factory AddDislike({required String selectedPostId}) = AddDislikeStart;

  const factory AddDislike.successful(Post post) = AddDislikeSuccessful;

  @Implements<ErrorAction>()
  const factory AddDislike.error(Object error, StackTrace stackTrace) = AddDislikeError;
}
