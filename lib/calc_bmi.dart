import 'dart:math';

class CalcBrain {
  final int height;
  final int weight;
  double _bmi;
  CalcBrain({this.weight, this.height});
  String bmiResult() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String bmiString() {
    if (_bmi > 30) {
      return 'Obese';
    } else if (_bmi > 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String feedback() {
    if (_bmi > 30) {
      return 'Your weight is at a very high level. In our view, it can cause serious health problems.  Better to  consult a doctor.';
    } else if (_bmi > 25) {
      return 'Your weight is at a high level. In our view, it can contribute towards health problems. Better to maintain a good diet.';
    } else if (_bmi > 18.5) {
      return 'Your weight is at the normal level that, in our view, should be optimal for health.';
    } else {
      return 'Your weight is at a very low level. In our view, it may lead to serious health problems. Better to maintain a good diet.';
    }
  }
}
