import 'package:flutter/material.dart';

import '../models/app_user.dart';
import 'containers/app_user_container.dart';

class UserAvatar extends StatelessWidget {
  const UserAvatar({super.key, required this.radius});

  final double radius;

  @override
  Widget build(BuildContext context) {
    return AppUserContainer(
      builder: (BuildContext context, AppUser? user) {
        if (user == null) {
          return CircleAvatar(
            radius: radius,
            backgroundColor: Colors.amber,
            backgroundImage: const AssetImage('assets/no_image.png'),
          );
        }

        return CircleAvatar(
          radius: radius,
          backgroundColor: Colors.amber,
          backgroundImage: user.photoUrl != null ? NetworkImage(user.photoUrl) : null,
          child: user.photoUrl != null
              ? null
              : Text(
                  user.displayName[0].toUpperCase(),
                  style: TextStyle(
                    fontSize: radius * 0.75,
                  ),
                ),
        );
      },
    );
  }
}
