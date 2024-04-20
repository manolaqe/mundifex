import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../actions/app_action.dart';
import '../actions/signin_email_password.dart';
import 'extension.dart';


class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

  void _onResult(AppAction action) {
    if (action is SignInEmailPasswordSuccessful) {
      Navigator.pop(context);
    } else if (action is SignInEmailPasswordError) {
      final Object error = action.error;
      if (error is FirebaseAuthException && error.code == 'INVALID_LOGIN_CREDENTIALS') {
        showDialog<void>(
          context: context,
          builder: (BuildContext context) {
            return const AlertDialog(
              title: Text('Login error'),
              content: Text('Account not found or incorrect password.'),
            );
          },
        );
      } else {
        showDialog<void>(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text('Login user error'),
              content: Text('${action.error}'),
            );
          },
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login user'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: formKey,
            child: Column(
              children: <Widget>[
                TextFormField(
                  controller: email,
                  decoration: const InputDecoration(
                    hintText: 'email',
                  ),
                  validator: (String? value) {
                    if (value == null || value.isEmpty || !value.contains('@')) {
                      return 'Provide a valid email address.';
                    }

                    return null;
                  },
                ),
                TextFormField(
                  controller: password,
                  obscureText: true,
                  decoration: const InputDecoration(
                    hintText: 'password',
                  ),
                  validator: (String? value) {
                    if (value == null || value.length < 6) {
                      return 'Password less than 6 characters.';
                    }

                    return null;
                  },
                ),
                ElevatedButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      context.dispatch(SignInEmailPassword(
                        email: email.text,
                        password: password.text,
                        result: _onResult,
                      ));
                    }
                  },
                  child: const Text('Login user'),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/createUser');
                  },
                  child: const Text('Create user'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}