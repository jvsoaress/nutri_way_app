import 'package:flutter/foundation.dart';

enum Gender {
  male,
  female,
}

class TMBModel {
  final int value;

  const TMBModel._(this.value);

  factory TMBModel.fromHarrisAndBenedict({
    @required Gender gender,
    @required int age,
    @required int height,
    @required int weight,
  }) {
    double result;
    if (gender == Gender.male) {
      result = 66 + (13.8 * weight) + (5 * height) - (6.8 * age);
    } else {
      result = 655 + (9.6 * weight) + (1.9 * height) - (4.7 * age);
    }
    return TMBModel._(result.floor());
  }

  factory TMBModel.fromOMS(
      {@required Gender gender, @required int weight, @required int age}) {
    double result;
    if (gender == Gender.male) {
      if (age >= 10 && age < 18) {
        result = 17.686 * weight + 658.2;
      } else if (age >= 18 && age < 30) {
        result = 15.057 * weight + 692.2;
      } else if (age >= 30 && age < 60) {
        result = 11.472 * weight + 873.1;
      } else if (age >= 60) {
        result = 11.711 * weight + 587.7;
      } else {
        throw Exception();
      }
    } else {
      if (age >= 10 && age < 18) {
        result = 13.384 * weight + 692.6;
      } else if (age >= 18 && age < 30) {
        result = 14.818 * weight + 486.6;
      } else if (age >= 30 && age < 60) {
        result = 8.126 * weight + 845.6;
      } else if (age >= 60) {
        result = 9.082 * weight + 658.5;
      } else {
        throw Exception();
      }
    }
    return TMBModel._(result.floor());
  }

  factory TMBModel.fromMifflinStJeor({
    @required Gender gender,
    @required int age,
    @required int height,
    @required int weight,
  }) {
    double result;
    if (gender == Gender.male) {
      result = (10 * weight) + (6.25 * height) - (5 * age) + 5;
    } else {
      result = (10 * weight) + (6.25 * height) - (5 * age) - 161;
    }
    return TMBModel._(result.floor());
  }
}
