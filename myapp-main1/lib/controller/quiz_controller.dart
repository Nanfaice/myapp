import 'package:myapp/data/quiz.dart';
import 'package:myapp/models/quiz_model.dart';

class QuizController {
  int _currentQuestionIndex = 0;

  QuizModel getCurrentQuestion() {
    return questions[_currentQuestionIndex];
  }

  void nextQuestion() {
    if (_currentQuestionIndex < questions.length - 1) {
      _currentQuestionIndex++;
    }
  }

  bool isLastQuestion() {
    return _currentQuestionIndex == questions.length - 1;
  }
}