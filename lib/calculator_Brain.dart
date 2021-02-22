import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});
  final int height;
  final int weight;
  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'ÜBERGEWICHT';
    } else if (_bmi > 18.5) {
      return 'NORMAL';
    } else {
      return 'UNTERGEWICHT';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'Du hast ein höheres als normales Körpergewicht. Versuche mehr zu trainieren.';
    } else if (_bmi > 18.5) {
      return 'Du hast ein normales Körpergewicht. Gut gemacht!';
    } else {
      return 'Du hast ein niedrigeres als normales Körpergewicht. Du könntest ein bisschen mehr essen.';
    }
  }
}
