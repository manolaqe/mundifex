import 'package:freezed_annotation/freezed_annotation.dart';

import 'comment.dart';
import 'location_data.dart';

part 'post.freezed.dart';
part 'post.g.dart';

@freezed
class Post with _$Post {
  factory Post({
    @Default('') String id,
    @Default('') String userId,
    required LocationData location,
    @Default('') String description,
    @Default(<Comment>[]) List<Comment> comments,
    @Default(<String>[]) List<String> likes,
    @Default(<String>[]) List<String> dislikes,
    @Default(<String>[]) List<String> photoUrls,
  }) = Post$;

  factory Post.fromJson(Map<dynamic, dynamic> json) => _$PostFromJson(Map<String, dynamic>.from(json));
}
