import 'dart:io';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:image_picker/image_picker.dart';
import 'package:redux/redux.dart';

import '../actions/create_post.dart';
import '../actions/get_posts.dart';
import '../actions/get_users.dart';
import '../models/app_state.dart';
import '../models/app_user.dart';
import 'containers/app_user_container.dart';
import 'containers/users_container.dart';
import 'extensions.dart';
import 'package:interactive_slider/interactive_slider.dart';

class CreatePostPage extends StatefulWidget {
  const CreatePostPage({super.key});

  @override
  _CreatePostPageState createState() => _CreatePostPageState();
}

class _CreatePostPageState extends State<CreatePostPage> {
  List<XFile> files = <XFile>[];
  final TextEditingController textEditingController = TextEditingController();

  InteractiveSliderController airSliderController = InteractiveSliderController(0);
  InteractiveSliderController cleanSliderController = InteractiveSliderController(0);
  InteractiveSliderController noiseSliderController = InteractiveSliderController(0);

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
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
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
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                  ),
                                ),
                                maxLines: null,
                              ),
                              const SizedBox(height: 16),
                              const Text(
                                'How breathable is the air?',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              InteractiveSlider(
                                controller: airSliderController,
                                unfocusedHeight: 30,
                                focusedHeight: 40,
                                gradient: const LinearGradient(
                                  colors: [Colors.red, Colors.yellow, Colors.green],
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                ),
                              ),
                              const SizedBox(height: 16),
                              const Text(
                                'How clean is the area?',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              InteractiveSlider(
                                controller: cleanSliderController,
                                padding: const EdgeInsets.all(0),
                                unfocusedHeight: 30,
                                focusedHeight: 40,
                                startIcon: const Text('Clean'),
                                endIcon: const Text('Dirty'),
                                onProgressUpdated: (double value) {
                                  print(cleanSliderController.value);
                                },
                              ),
                              const SizedBox(height: 16),
                              const Text(
                                'How noisy is the area?',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              InteractiveSlider(
                                controller: noiseSliderController,
                                padding: const EdgeInsets.all(0),
                                unfocusedHeight: 30,
                                focusedHeight: 40,
                                startIcon: const Text('Quiet'),
                                endIcon: const Text('Loud'),
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
                                      airSliderController.value,
                                      cleanSliderController.value,
                                      noiseSliderController.value,
                                    ));
                                    context.dispatch(const GetPosts());
                                    Navigator.pop(context);
                                  }
                                },
                                child: const Text(
                                  'Submit',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
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
