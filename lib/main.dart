import 'package:clone_food_recipe/pages/home.dart';
import 'package:clone_food_recipe/pages/login.dart';
import 'package:clone_food_recipe/pages/navbar.dart';
import 'package:flutter/material.dart';

import 'pages/onboarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnboardingPage()
      );
  }
}
