import 'package:freezed_annotation/freezed_annotation.dart';

import 'app_action.dart';

part 'set.freezed.dart';

@freezed
class SetSelectedPost with _$SetSelectedPost implements AppAction {
  const factory SetSelectedPost(String id) = SetSelectedPost$;
}
