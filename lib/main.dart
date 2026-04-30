// مدخل التطبيق.
import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movie Explorer',//وهذا يمثل اسم التطبيق بشكل عام.
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}