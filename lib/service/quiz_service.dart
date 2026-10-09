import 'package:flutter_homework_02/model/quiz_model.dart%20.dart';

class QuizService {
  List<QuestionModel> getQuestions() {
    return const [
      QuestionModel(
        question: 'What is the chemical formula for water?',
        answers: ['H2O', 'CO2', 'O2', 'NaCl'],
        correctAnswerIndex: 0,
      ),
      QuestionModel(
        question: 'Which planet is known as the Red Planet?',
        answers: ['Earth', 'Mars', 'Jupiter', 'Venus'],
        correctAnswerIndex: 1,
      ),
    ];
  }
}
