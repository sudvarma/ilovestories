import 'package:flutter/material.dart';
import 'home/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'i love stories',
      color: Colors.white,
      theme: ThemeData(
          primaryTextTheme: Typography.blackCupertino,
          primaryColor: Colors.white),
      home: const MyHomePage(),
    );
  }
}
