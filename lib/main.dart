import 'package:flutter/material.dart';
import 'package:flutter_auth/screens/login_screen.dart';
import 'package:flutter_auth/screens/loginpage_screen.dart';
import 'package:flutter_auth/screens/phone_screen.dart';
import 'package:flutter_auth/screens/signup_screen.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Auth',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      routes: {
        "/": (context) => const LoginScreen(),
        "/emailPwdSign": (context) => const EmailPasswordSignup(),
        "/emailPwdLogin": (context) => const EmailPasswordLogin(),
        "/phone": (context) => const PhoneScreen(),
      },
    );
  }
}
