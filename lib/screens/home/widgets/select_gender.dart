import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './gender_input.dart';
import '../../../controllers/imc_controller.dart';

class SelectGender extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<IMCController>(
      builder: (context, value, child) => Row(
        children: <Widget>[
          Expanded(
            child: GenderInput(
              asset: 'assets/gender-fluid.svg',
              title: 'MASCULINO',
              selected: value.imcModel.isMale,
              switchGender: value.switchGender,
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: GenderInput(
              asset: 'assets/female.svg',
              title: 'FEMININO',
              selected: !value.imcModel.isMale,
              switchGender: value.switchGender,
            ),
          ),
        ],
      ),
    );
  }
}
