import 'package:flutter/material.dart';
import 'package:flutter_auth/widgets/custom_button.dart';
import 'package:flutter_auth/widgets/new_textfield.dart';

class PhoneScreen extends StatefulWidget {
  static String routeName = '/phone';
  const PhoneScreen({Key? key}) : super(key: key);

  @override
  State<PhoneScreen> createState() => _PhoneScreenState();
}

class _PhoneScreenState extends State<PhoneScreen> {
  final TextEditingController phoneController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    phoneController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Phone Login",
            style: TextStyle(fontSize: 30),
          ),
          const SizedBox(height: 20),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: NewTextField(
              controller: phoneController,
              hintText: 'Enter phone number',
              keyb: TextInputType.phone,
              ans: false,
            ),
          ),
          const SizedBox(height: 40),
          CustomButton(onTap: () {}, text: 'OK'),
        ],
      ),
    );
  }
}
