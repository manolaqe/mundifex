import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../actions/app_action.dart';
import '../actions/signin_email_password.dart';
import '../actions/signin_facebook.dart';
import '../actions/signin_google.dart';
import 'extensions.dart';

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
    if (action is SignInEmailPasswordSuccessful || action is SignInGoogleSuccessful) {
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
    } else if (action is SignInGoogleError) {
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
      } else if (action is SignInFacebookError) {
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
        }
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
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: const Text('Sign in to Mundifex', style: TextStyle(fontSize: 25)),
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
                  ElevatedButton(
                    onPressed: () {
                      context.dispatch(
                        SignInGoogle(
                          result: _onResult,
                        ),
                      );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Image.asset('assets/google_icon.png', width: 27, height: 27),
                        const SizedBox(
                          width: 250,
                          child: Text(
                            textAlign: TextAlign.center,
                            'Continue with Google',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      context.dispatch(
                        SignInFacebook(
                          result: _onResult,
                        ),
                      );
                    },
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
                            'Continue with Facebook',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
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
                                textAlign: TextAlign.center, 'Continue with Apple', style: TextStyle(fontSize: 20))),
                      ],
                    ),
                  ),
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
                      label: Text(
                        'Password',
                      ),
                    ),
                    validator: (String? value) {
                      if (value == null || value.length < 6) {
                        return 'Password less than 6 characters.';
                      }

                      return null;
                    },
                  ),
                  const SizedBox(height: 20),
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
                    child: const Text('Sign in', style: TextStyle(fontSize: 15)),
                  ),
                  const SizedBox(height: 20),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/forgot_password');
                    },
                    child: const Text(
                      'Forgot your password?',
                      style: TextStyle(decoration: TextDecoration.underline, fontSize: 15),
                    ),
                  ),
                  const SizedBox(height: 30),
                  const Text(
                    "Don't have an account?",
                    style: TextStyle(fontSize: 15),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/sign_up');
                    },
                    child: const Text(
                      'Sign Up for Mundifex',
                      style: TextStyle(decoration: TextDecoration.underline, fontSize: 15),
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
