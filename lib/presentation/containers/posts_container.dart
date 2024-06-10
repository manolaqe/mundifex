import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import '../../models/app_state.dart';
import '../../models/forecast_weather.dart';
import '../../models/post.dart';

class PostsContainer extends StatelessWidget {
  const PostsContainer({super.key, required this.builder});

  final ViewModelBuilder<List<Post>?> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, List<Post>?>(
      builder: builder,
      converter: (Store<AppState> store) {
        return store.state.posts;
      },
    );
  }
}
