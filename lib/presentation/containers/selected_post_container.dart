import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import '../../models/app_state.dart';
import '../../models/post.dart';

class SelectedPostContainer extends StatelessWidget {
  const SelectedPostContainer({super.key, required this.builder});

  final ViewModelBuilder<String?> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, String?>(
      builder: builder,
      converter: (Store<AppState> store) {
        return store.state.selectedPostId;
      },
    );
  }
}
