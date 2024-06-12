import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import '../actions/create_comment.dart';
import '../actions/get_posts.dart';
import '../actions/set.dart';
import '../models/app_state.dart';
import '../models/app_user.dart';
import '../models/post.dart';
import 'containers/app_user_container.dart';
import 'containers/posts_container.dart';
import 'containers/selected_post_container.dart';
import 'containers/users_container.dart';
import 'extensions.dart';

class CommentsPage extends StatelessWidget {
  const CommentsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController _textEditingController = TextEditingController();
    return SelectedPostContainer(builder: (BuildContext context, String? selectedPostId) {
      if (selectedPostId == null) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      }
      return StoreConnector<AppState, List<Post>>(
        converter: (Store<AppState> store) => store.state.posts,
        onInit: (Store<AppState> store) {
          store.dispatch(const GetPosts());
        },
        builder: (BuildContext context, List<Post>? posts) {
          if (posts == null) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return AppUserContainer(
            builder: (BuildContext context, AppUser? user) {
              return UsersContainer(
                builder: (BuildContext context, Map<String, AppUser>? users) {
                  if (users == null) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }

                  return Scaffold(
                    appBar: AppBar(
                      title: const Text('Comments'),
                    ),
                    body: Column(
                      children: <Widget>[
                        Expanded(
                          child: CustomScrollView(
                            slivers: <Widget>[
                              SliverList(
                                delegate: SliverChildBuilderDelegate(
                                  (BuildContext context, int index) {
                                    return ListTile(
                                      leading: CircleAvatar(
                                        backgroundImage: NetworkImage(
                                          users[posts
                                                  .where((Post element) => element.id == selectedPostId)
                                                  .first
                                                  .comments[index]
                                                  .userId]!
                                              .photoUrl,
                                        ),
                                      ),
                                      title: Text(
                                        users[posts.where((Post element) => element.id == selectedPostId).first.userId]!
                                            .displayName,
                                        style: const TextStyle(fontSize: 14),
                                      ),
                                      subtitle: Text(
                                        posts
                                            .where((Post element) => element.id == selectedPostId)
                                            .first
                                            .comments[index]
                                            .value,
                                        style: const TextStyle(fontSize: 14),
                                      ),
                                    );
                                  },
                                  childCount:
                                      posts.where((Post element) => element.id == selectedPostId).first.comments.length,
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: TextField(
                                  controller: _textEditingController,
                                  decoration: InputDecoration(
                                    hintText: 'Enter your comment',
                                  ),
                                ),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  if (user == null) {
                                    Navigator.pushNamed(context, '/sign_in');
                                  } else {
                                    context
                                      ..dispatch(CreateComment(_textEditingController.text))
                                      ..dispatch(const GetPosts());

                                    _textEditingController.clear();
                                  }
                                },
                                child: const Text('Send'),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              );
            },
          );
        },
      );
    });
  }
}
