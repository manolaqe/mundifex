import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';

import '../models/post.dart';
import 'app_action.dart';

part 'create_post.freezed.dart';

@freezed
class CreatePost with _$CreatePost implements AppAction {
  const factory CreatePost(
    List<XFile> photoUrls,
    String description,
    double airSliderValue,
    double cleanSliderValue,
    double noiseSliderValue,
  ) = CreatePostStart;

  const factory CreatePost.successful(Post post) = CreatePostSuccessful;

  @Implements<ErrorAction>()
  const factory CreatePost.error(Object error, StackTrace stackTrace) = CreatePostError;
}
