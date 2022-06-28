import 'package:flutter/material.dart';
import 'package:task1/pages/onboarding_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Task one',
      debugShowCheckedModeBanner: false,
      home: OnboardingPage(),
    );
  }
}
