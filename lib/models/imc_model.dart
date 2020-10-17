import 'package:flutter/material.dart';

class IMCModel {
  bool isMale;
  double height;
  int age;
  int weight;
  double imc;

  IMCModel({
    @required this.isMale,
    @required this.height,
    @required this.age,
    @required this.weight,
  });

  factory IMCModel.initial() =>
      IMCModel(isMale: true, height: 170.0, age: 20, weight: 60);

  Map<String, dynamic> get result {
    if (imc < 18.5) {
      return {
        'text': 'ABAIXO DO PESO',
        'color': Colors.lightBlue,
        'ref': 'Inferior a 18.5'
      };
    } else if (imc <= 24.9) {
      return {
        'text': 'NORMAL',
        'color': Colors.green,
        'ref': 'Entre 18.5 e 24.9'
      };
    } else if (imc <= 29.9) {
      return {
        'text': 'SOBREPESO',
        'color': Colors.yellow[700],
        'ref': 'Entre 25.0 e 29.9'
      };
    } else if (imc <= 34.9) {
      return {
        'text': 'OBESIDADE GRAU I',
        'color': Colors.orange,
        'ref': 'Entre 30.0 e 34.9'
      };
    } else if (imc <= 39.9) {
      return {
        'text': 'OBESIDADE GRAU II',
        'color': Colors.red,
        'ref': 'Entre 35.0 e 39.9'
      };
    } else if (imc >= 40) {
      return {
        'text': 'OBESIDADE GRAU III',
        'color': Colors.purple,
        'ref': 'Superior a 40.0'
      };
    } else {
      return {'text': 'ERRO', 'color': Colors.white};
    }
  }
}
