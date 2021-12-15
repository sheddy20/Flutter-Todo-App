// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:myride/screens/sign_up.dart';
import 'package:myride/widgets/welcome_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MyRide",
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (_) => SignUpScreen(),
        "/welcome": (_) => WelcomeScreen(),
      },
    );
  }
}
