import 'package:flutter/foundation.dart';

import '../models/imc_model.dart';
import '../models/tmb_model.dart';

class IMCController extends ChangeNotifier {
  final IMCModel imcModel;
  List<Map<String, dynamic>> tmbList;

  IMCController(this.imcModel);

  void incrementWeight() {
    imcModel.weight++;
    notifyListeners();
  }

  void decrementWeight() {
    imcModel.weight--;
    notifyListeners();
  }

  void incrementAge() {
    imcModel.age++;
    notifyListeners();
  }

  void decrementAge() {
    imcModel.age--;
    notifyListeners();
  }

  void switchGender() {
    imcModel.isMale = !imcModel.isMale;
    notifyListeners();
  }

  void changeHeight(double value) {
    imcModel.height = value;
    notifyListeners();
  }

  void calculateIMC() {
    imcModel.imc =
        imcModel.weight / (imcModel.height * imcModel.height * 0.0001);
  }

  void calculateTMB() {
    final gender = imcModel.isMale ? Gender.male : Gender.female;
    final tmbHarrisAndBenedict = TMBModel.fromHarrisAndBenedict(
        gender: gender,
        age: imcModel.age,
        height: imcModel.height.toInt(),
        weight: imcModel.weight);
    final tmbOMS = TMBModel.fromOMS(
        gender: gender, weight: imcModel.weight, age: imcModel.age);
    final tmbMifflinStJeor = TMBModel.fromMifflinStJeor(
        gender: gender,
        age: imcModel.age,
        height: imcModel.height.toInt(),
        weight: imcModel.weight);
    tmbList = [
      {'title': 'Harris e Benedict', 'value': tmbHarrisAndBenedict},
      {'title': 'FAO/OMS', 'value': tmbOMS},
      {'title': 'Mifflin St. Jeor', 'value': tmbMifflinStJeor}
    ];
  }
}
