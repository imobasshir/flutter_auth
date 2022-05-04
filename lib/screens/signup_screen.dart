import 'package:flutter/material.dart';
import 'package:flutter_auth/widgets/custom_button.dart';
import 'package:flutter_auth/widgets/new_textfield.dart';

class EmailPasswordSignup extends StatefulWidget {
  const EmailPasswordSignup({Key? key}) : super(key: key);

  @override
  State createState() => _EmailPasswordSignupState();
}

class _EmailPasswordSignupState extends State<EmailPasswordSignup> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Sign Up",
            style: TextStyle(fontSize: 30),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.08),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: NewTextField(
              controller: emailController,
              hintText: 'Enter your email',
              keyb: TextInputType.emailAddress,
              ans: false,
            ),
          ),
          const SizedBox(height: 20),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: NewTextField(
              controller: passwordController,
              hintText: 'Enter your password',
              keyb: TextInputType.text,
              ans: true,
            ),
          ),
          const SizedBox(height: 40),
          CustomButton(onTap: (){}, text: 'Sign Up'),
        ],
      ),
    );
  }
}
