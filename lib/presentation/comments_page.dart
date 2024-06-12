import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import '../actions/create_comment.dart';
import '../actions/get_posts.dart';
import '../actions/get_users.dart';
import '../models/app_state.dart';
import '../models/app_user.dart';
import '../models/post.dart';
import 'containers/app_user_container.dart';
import 'containers/selected_post_container.dart';
import 'containers/users_container.dart';
import 'extensions.dart';

class CommentsPage extends StatelessWidget {
  const CommentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController textEditingController = TextEditingController();
    return SelectedPostContainer(
      builder: (BuildContext context, String? selectedPostId) {
        if (selectedPostId == null) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        return StoreConnector<AppState, Map<String, AppUser>>(
          converter: (Store<AppState> store) => store.state.users,
          onInit: (Store<AppState> store) {
            store.dispatch(const GetUsers());
          },
          builder: (BuildContext context, Map<String, AppUser>? users) {
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

                final Post selectedPost = posts.where((Post element) => element.id == selectedPostId).first;
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
                                          final AppUser? commentUser = users[posts
                                              .where((Post element) => element.id == selectedPostId)
                                              .first
                                              .comments[index]
                                              .userId];
                                          return ListTile(
                                            leading: CircleAvatar(
                                              backgroundImage: commentUser == null
                                                  ? const AssetImage('assets/no_image.png') as ImageProvider<Object>
                                                  : NetworkImage(commentUser.photoUrl),
                                            ),
                                            title: Text(
                                              commentUser == null ? 'Unknown User' : commentUser.displayName,
                                              style: const TextStyle(fontSize: 14),
                                            ),
                                            subtitle: Text(
                                              selectedPost.comments[index].value,
                                              style: const TextStyle(fontSize: 14),
                                            ),
                                          );
                                        },
                                        childCount: selectedPost.comments.length,
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
                                        controller: textEditingController,
                                        decoration: const InputDecoration(
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
                                            ..dispatch(CreateComment(textEditingController.text))
                                            ..dispatch(const GetPosts());

                                          textEditingController.clear();
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
          },
        );
      },
    );
  }
}
