import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../actions/app_action.dart';
import '../actions/signin_email_password.dart';
import 'extension.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
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
              content: Text('${action.stackTrace}'),
            );
          },
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: const Text(
          'Sign up to Mundifex',
          style: TextStyle(
            fontSize: 25,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const SizedBox(height: 20),
                  TextFormField(
                    controller: email,
                    decoration: const InputDecoration(
                      label: Text('Email'),
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
                      label: Text('Password'),
                    ),
                    validator: (String? value) {
                      if (value == null || value.length < 6) {
                        return 'Password less than 6 characters.';
                      }

                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        context.dispatch(
                          SignInEmailPassword(
                            email: email.text,
                            password: password.text,
                            result: _onResult,
                          ),
                        );
                      }
                    },
                    child: const Text(
                      'Sign up',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ),
                  const Divider(
                    height: 50,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Image.asset(
                          'assets/google_icon.png',
                          width: 27,
                          height: 27,
                        ),
                        const SizedBox(
                          width: 250,
                          child: Text(
                            textAlign: TextAlign.center,
                            'Sign up with Google',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Icon(
                          FontAwesomeIcons.facebook,
                          color: Color.fromARGB(255, 8, 102, 255),
                          size: 27,
                        ),
                        SizedBox(
                          width: 250,
                          child: Text(
                            textAlign: TextAlign.center,
                            'Sign up with Facebook',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Icon(
                          FontAwesomeIcons.apple,
                          color: Colors.white,
                          size: 27,
                        ),
                        SizedBox(
                          width: 250,
                          child: Text(
                            textAlign: TextAlign.center,
                            'Sign up with Apple',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(
                        context,
                        '/sign_in',
                      );
                    },
                    child: const Text(
                      'Already have an account? Sign in.',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
