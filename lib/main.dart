import 'package:flutter/material.dart';
import 'package:flutter_homework_02/screens/onboarding_screen.dart';
import 'package:flutter_homework_02/screens/quiz_screen.dart';

void main() {
  runApp(const OnboardingApp());
}

class OnboardingApp extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Onboarding App',
      home: OnboardingScreen(),
    );
  }
}

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quiz App',
      home: QuizScreen(),
    );
  }
}
