import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../controllers/imc_controller.dart';
import '../../results/results_screen.dart';

class CalculateButton extends StatelessWidget {
  const CalculateButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<IMCController>(context, listen: false);
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15),
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
      ),
      child: RaisedButton(
        onPressed: () {
          controller.calculateIMC();
          controller.calculateTMB();
          Navigator.of(context).pushNamed(ResultsScreen.routeName);
        },
        child: Text(
          'CALCULAR',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        color: Theme.of(context).accentColor,
      ),
    );
  }
}
