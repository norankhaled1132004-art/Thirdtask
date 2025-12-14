import 'package:flutter/material.dart';
import 'package:flutter_application_6/pages/login.dart';
import 'package:flutter_application_6/pages/signup.dart';
import 'package:flutter_application_6/pages/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (context) => const Welcome(),
        "/login": (context) => const Login(),
        "/signup": (context) => const Signup(),
      },
    );
  }
}
