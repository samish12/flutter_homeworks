import 'package:flutter/material.dart';
import 'package:flutter_homework_02/model/quiz_model.dart%20.dart';
import 'package:flutter_homework_02/service/quiz_service.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreen();
}

class _QuizScreen extends State<QuizScreen> {
  final List<QuestionModel> _questions = QuizService().getQuestions();
  int _currentIndex = 0;
  int _score = 0;
  int? _selectedOptionIndex;
  bool _isAnswered = false;

  void _submitAnswer(int selectedIndex) {
    if (_isAnswered) return;
    final isCorrect =
        selectedIndex == _questions[_currentIndex].correctAnswerIndex;
    setState(() {
      _selectedOptionIndex = selectedIndex;
      _isAnswered = true;

      if (isCorrect) {
        _score += 10;
      } else {
        _score -= 5;
      }
    });
  }

  void _nextQuestion() {
    setState(() {
      if (_currentIndex < _questions.length - 1) {
        _currentIndex++;
        _selectedOptionIndex = null;
        _isAnswered = false;
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Quiz Finished! Final Score: $_score')),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = _questions[_currentIndex];

    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        title: const Text('Quizz App'),
        backgroundColor: Colors.blue.shade900,
        foregroundColor: Colors.white,
        actions: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(
              child: Text(
                'Score: $_score',
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Question ${_currentIndex + 1} of ${_questions.length}',
              style: const TextStyle(
                fontSize: 16,
                color: Color.fromARGB(255, 123, 123, 123),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              currentQuestion.question,
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),
            ...List.generate(currentQuestion.answers.length, (index) {
              final optionText = currentQuestion.answers[index];
              Color buttonColor = const Color.fromARGB(255, 209, 209, 209);
              if (_isAnswered) {
                if (index == currentQuestion.correctAnswerIndex) {
                  buttonColor = Colors.green;
                } else if (index == _selectedOptionIndex) {
                  buttonColor = Colors.red;
                }
              }
              return GestureDetector(
                onTap: () => _submitAnswer(index),
                child: Container(
                  margin: const EdgeInsets.only(bottom: 15),
                  padding: const EdgeInsets.all(18),
                  decoration: BoxDecoration(
                    color: buttonColor,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.grey.shade300),
                  ),
                  child: Text(
                    optionText,
                    style: TextStyle(
                      fontSize: 16,
                      color:
                          (_isAnswered &&
                              (index == currentQuestion.correctAnswerIndex ||
                                  index == _selectedOptionIndex))
                          ? Colors.white
                          : Colors.black,
                    ),
                  ),
                ),
              );
            }),
            const Spacer(),
            if (_isAnswered)
              ElevatedButton(
                onPressed: _nextQuestion,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue.shade900,
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: const Text(
                  'Next Question',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
