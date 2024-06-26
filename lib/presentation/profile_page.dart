import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../actions/sign_out.dart';
import '../models/app_user.dart';
import 'containers/app_user_container.dart';
import 'extensions.dart';
import 'user_avatar.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppUserContainer(
      builder: (BuildContext context, AppUser? user) {
        if (user == null) {
          return const Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }

        return Scaffold(
          appBar: AppBar(
            title: const Text('User profile'),
          ),
          body: Padding(
            padding: const EdgeInsets.all(40.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                GestureDetector(
                  onTap: () async {
                    final ImagePicker picker = ImagePicker();
                    final XFile? file =
                        await picker.pickImage(source: ImageSource.gallery, maxHeight: 1024, maxWidth: 1024);

                    if (file != null) {
                      // ignore: use_build_context_synchronously
                      // context.dispatch(ChangePicture(file.path));
                    }
                  },
                  child: const UserAvatar(radius: 100),
                ),
                const SizedBox(height: 32),
                Text(
                  user.displayName,
                  style: const TextStyle(fontSize: 24.0),
                ),
                const SizedBox(height: 16),
                Text(
                  user.email,
                  style: const TextStyle(fontSize: 20.0),
                ),
                const SizedBox(height: 32),
                TextButton(
                  child: const Text('Sign out'),
                  onPressed: () {
                    showDialog<void>(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text('Sign out'),
                          content: const Text('Are you sure you want to sign out?'),
                          actions: <Widget>[
                            TextButton(
                              child: const Text('Cancel'),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                            TextButton(
                              child: const Text('Sign out'),
                              onPressed: () {
                                context.dispatch(const SignOut());
                                Navigator.pop(context);
                                Navigator.pop(context);
                              },
                            ),
                          ],
                        );
                      },
                    );
                  },
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
