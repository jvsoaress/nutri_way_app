import 'package:flutter/material.dart';

import 'widgets/calculate_button.dart';
import 'widgets/height_slider.dart';
import 'widgets/select_gender.dart';
import 'widgets/select_weight_and_age.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Nutri Way',
          style: TextStyle(fontSize: 20),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: <Widget>[
            Expanded(
              child: SelectGender(),
            ),
            Expanded(
              child: HeightSlider(),
            ),
            Expanded(
              child: SelectWeightAndAge(),
            ),
            CalculateButton(),
          ],
        ),
      ),
    );
  }
}
