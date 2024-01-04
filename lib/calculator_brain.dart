import 'dart:math';

class CalculatorBrain {
  final int height;
  final int weight;

  CalculatorBrain({required this.height, required this.weight});

  double _bmi() {
    return weight / pow(height/100, 2);
  }

  String getBmi() {
    double result  = _bmi();
    return result.toStringAsFixed(1); // 返回带有一位小数点的字符串
  }

  String getResult() {
    double result = _bmi();
    if (result < 18.5) {
      return 'Underweight';
    } else if (result >= 18.5 && result < 24.9) {
      return 'Normal';
    } else if (result >= 24.9 && result < 29.9) {
      return 'Overweight';
    } else {
      return 'Obese';
    }
  }

  String getInterpretation() {
    double result = _bmi();
    if (result < 18.5) {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    } else if (result >= 18.5 && result < 24.9) {
      return 'You have a normal body weight. Good job!';
    } else if (result >= 24.9 && result < 29.9) {
      return 'You have a higher than normal body weight. You can exercise more.';
    } else {
      return 'You have a weight problem. You really need to exercise.';
    }
  }
}
