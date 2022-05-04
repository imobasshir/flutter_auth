import 'package:flutter/material.dart';
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
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomButton(
                  onTap: () {
                    Navigator.pushNamed(context, "/emailPwdSign");
                  },
                  text: 'Email/Password Sign Up',
                ),
                const SizedBox(height: 16),
                CustomButton(
                  onTap: () {
                    Navigator.pushNamed(context, "/emailPwdLogin");
                  },
                  text: 'Email/Password Login',
                ),
                const SizedBox(height: 16),
                CustomButton(
                  onTap: () {
                    Navigator.pushNamed(context, "/phone");
                  },
                  text: 'Phone Sign In',
                ),
                const SizedBox(height: 16),
                CustomButton(
                  onTap: () {},
                  text: 'Google Sign In',
                ),
                const SizedBox(height: 16),
                CustomButton(
                  onTap: () {},
                  text: 'Facebook Sign In',
                ),
                const SizedBox(height: 16),
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
