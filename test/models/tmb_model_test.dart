import 'package:flutter_test/flutter_test.dart';
import 'package:nutri_way/models/tmb_model.dart';

void main() {
  group('Harris and Benedict', () {
    test('should return a TMBModel with correct value when gender is male', () {
      final tmbModel = TMBModel.fromHarrisAndBenedict(
          gender: Gender.male, age: 20, height: 170, weight: 66);

      expect(tmbModel.value, 1690);
    });

    test('should return a TMBModel with correct value when gender is female',
        () {
      final tmbModel = TMBModel.fromHarrisAndBenedict(
          gender: Gender.female, age: 40, height: 180, weight: 60);

      expect(tmbModel.value, 1385);
    });
  });

  group('FAO/OMS', () {
    test('should return a TMBModel with correct value when gender is male', () {
      final tmbModel =
          TMBModel.fromOMS(gender: Gender.male, weight: 66, age: 20);

      expect(tmbModel.value, 1685);
    });

    test('should return a TMBModel with correct value when gender is female',
        () {
      final tmbModel =
          TMBModel.fromOMS(gender: Gender.female, weight: 80, age: 55);

      expect(tmbModel.value, 1495);
    });
  });

  group('Mifflin St Jeor', () {
    test('should return a TMBModel with correct value when gender is male', () {
      final tmbModel = TMBModel.fromMifflinStJeor(
          gender: Gender.male, weight: 66, age: 20, height: 170);

      expect(tmbModel.value, 1627);
    });

    test('should return a TMBModel with correct value when gender is female',
        () {
      final tmbModel = TMBModel.fromMifflinStJeor(
          height: 180, gender: Gender.female, weight: 110, age: 32);

      expect(tmbModel.value, 1904);
    });
  });
}
