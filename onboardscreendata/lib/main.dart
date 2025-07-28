import 'package:flutter/material.dart';
import './screens/onboarding_screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stylish Onboarding',
      debugShowCheckedModeBanner: false,
      home: OnboardingScreen(),
    );
  }
}
