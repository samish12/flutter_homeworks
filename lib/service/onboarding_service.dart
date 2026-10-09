import 'package:flutter_homework_02/model/onboarding_model.dart';

class OnboardingService {
  List<OnboardingModel> getOnboardingItems() {
    return const [
      OnboardingModel(
        title: 'Welcome To Quizzo!',
        description: 'Compete with friends, earn points, and climb the leaderboard in this addictive trivia challenge.',
        imagePath: 'lib/assets/onboarding1.png',
      ),
      OnboardingModel(
        title: 'The Ultimate Trivia Challenge',
        description: 'Put your knowledge to the test and prove your expertise across a wide range of topics in this engaging game.',
        imagePath: 'lib/assets/onboarding2.png',
      ),
      OnboardingModel(
        title: 'Test Your Knowledge With Quizzo',
        description: 'Quizzo is the perfect app to challenge yourself and your friends, with endless trivia fun at your fingertips.',
        imagePath: 'lib/assets/onboarding3.png',
      ),
    ];
  }
}
