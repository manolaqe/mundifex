import 'dart:io';

import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:image_picker/image_picker.dart';
import 'package:photo_view/photo_view.dart';
import 'package:redux/redux.dart';

import '../actions/create_post.dart';
import '../actions/get_posts.dart';
import '../actions/get_users.dart';
import '../models/app_state.dart';
import '../models/app_user.dart';
import 'containers/app_user_container.dart';
import 'containers/users_container.dart';
import 'extensions.dart';

class CreatePostPage extends StatefulWidget {
  const CreatePostPage({Key? key}) : super(key: key);

  @override
  _CreatePostPageState createState() => _CreatePostPageState();
}

class _CreatePostPageState extends State<CreatePostPage> {
  List<XFile> files = <XFile>[];
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, Map<String, AppUser>>(
      converter: (Store<AppState> store) => store.state.users,
      onInit: (Store<AppState> store) {
        store.dispatch(const GetUsers());
      },
      builder: (BuildContext context, Map<String, AppUser>? users) {
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
                    title: const Text('Create Post'),
                  ),
                  body: CustomScrollView(
                    slivers: <Widget>[
                      SliverToBoxAdapter(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            children: <Widget>[
                              Container(
                                  decoration: const BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(color: Colors.grey),
                                      top: BorderSide(color: Colors.grey),
                                      left: BorderSide(color: Colors.grey),
                                      right: BorderSide(color: Colors.grey),
                                    ),
                                  ),
                                  child: ListTile(
                                    onTap: () async {
                                      final ImagePicker picker = ImagePicker();
                                      files = await picker.pickMultipleMedia();
                                      setState(() {});
                                    },
                                    title: const Text('Add Photos'),
                                    trailing: const Icon(Icons.add_a_photo),
                                  )),
                              const SizedBox(
                                height: 20,
                              ),
                              SizedBox(
                                height: 200,
                                child: GridView.builder(
                                  itemCount: files.length,
                                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    crossAxisSpacing: 4,
                                    mainAxisSpacing: 4,
                                  ),
                                  itemBuilder: (BuildContext context, int index) {
                                    if (files[index].path.isEmpty) {
                                      return Image.asset('assets/no_image.png');
                                    }
                                    return Image(
                                      width: 300,
                                      height: 300,
                                      fit: BoxFit.cover,
                                      image: FileImage(
                                        File(files[index].path),
                                      ),
                                    );
                                  },
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              TextFormField(
                                controller: textEditingController,
                                decoration: const InputDecoration(
                                  labelText: 'Description',
                                  border: OutlineInputBorder(),
                                ),
                                maxLines: null,
                              ),
                              const SizedBox(height: 16),
                              ElevatedButton(
                                onPressed: () {
                                  if (user == null) {
                                    Navigator.pushNamed(context, '/sign_in');
                                  } else {
                                    context.dispatch(CreatePost(
                                      files,
                                      textEditingController.text,
                                    ));
                                    context.dispatch(GetPosts());
                                    Navigator.pop(context);
                                  }
                                },
                                child: const Text('Submit'),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                );
              },
            );
          },
        );
      },
    );
  }
}
