import 'package:flutter_application_1/question.dart';

class QuizBrain {

  int _questionNumber = 0;

  final List<Question> _questions = [
    Question(
        question: 'You can lead a cow down stairs but not up stairs.',
        answer: false),
    Question(question: 'A slug\'s blood is green.', answer: true),
    Question(
        question: 'Approximately one quarter of human bones are in the feet.',
        answer: true)
  ];


  nextQuestion() {
    if(_questionNumber < _questions.length - 1) {
      _questionNumber++;
    }
  }


  resetQuiz() {
    _questionNumber = 0;
  }

  getCorrectAnswer() {
    return _questions[_questionNumber].answer;
  }

  getQuestionText() {
    return _questions[_questionNumber].question;
  }

  getQuestionsCount() {
    return _questions.length;
  }

}