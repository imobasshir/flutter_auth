import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth/services/firebase_auth_methods.dart';
import 'package:flutter_auth/widgets/custom_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomButton(
                  onTap: () {
                    Navigator.pushNamed(context, "/emailPwdSign");
                  },
                  text: 'Email/Password Sign Up',
                ),
                CustomButton(
                  onTap: () {
                    Navigator.pushNamed(context, "/emailPwdLogin");
                  },
                  text: 'Email/Password Login',
                ),
                CustomButton(
                  onTap: () {
                    Navigator.pushNamed(context, "/phone");
                  },
                  text: 'Phone Sign In',
                ),
                CustomButton(
                  onTap: () {
                    FirebaseAuthMethods(FirebaseAuth.instance)
                        .signInWithGoogle(context);
                  },
                  text: 'Google Sign In',
                ),
                CustomButton(
                  onTap: () {},
                  text: 'Facebook Sign In',
                ),
                CustomButton(
                  onTap: () {},
                  text: 'Anonymous Sign In',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
