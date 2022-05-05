import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth/firebase_options.dart';
import 'package:flutter_auth/screens/login_screen.dart';
import 'package:flutter_auth/screens/loginpage_screen.dart';
import 'package:flutter_auth/screens/phone_screen.dart';
import 'package:flutter_auth/screens/signup_screen.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    FacebookAuth.i.webInitialize(
      appId: "686369559264488",
      cookie: true,
      xfbml: true,
      version: "v12.0",
    );
  }
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
