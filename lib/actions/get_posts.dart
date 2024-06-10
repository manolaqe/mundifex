import 'package:freezed_annotation/freezed_annotation.dart';

import '../models/post.dart';
import 'app_action.dart';

part 'get_posts.freezed.dart';

@freezed
class GetPosts with _$GetPosts implements AppAction {
  const factory GetPosts() = GetPostsStart;

  const factory GetPosts.successful(List<Post> posts) = GetPostsSuccessful;

  @Implements<ErrorAction>()
  const factory GetPosts.error(Object error, StackTrace stackTrace) = GetPostsError;
}
