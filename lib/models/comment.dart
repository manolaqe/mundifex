import 'package:freezed_annotation/freezed_annotation.dart';

part 'comment.freezed.dart';
part 'comment.g.dart';

@freezed
class Comment with _$Comment {
  const factory Comment({
    @Default('') String userId,
    @Default('') String value,
  }) = Comment$;

  factory Comment.fromJson(Map<dynamic, dynamic> json) => _$CommentFromJson(Map<String, dynamic>.from(json));
}
