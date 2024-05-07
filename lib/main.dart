import 'package:flutter/material.dart';
import 'package:sad/screens/main_screen.dart';
import 'package:sad/screens/welcome_screen.dart';
import 'package:sad/themes/light_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightMode,
      routes: {
        '/':(context) => WelcomeScreen(),
        '/main_screen':(context) => MainScreen(),
      },
    );
  }
}