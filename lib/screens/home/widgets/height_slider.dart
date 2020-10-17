import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../controllers/imc_controller.dart';

class HeightSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Consumer<IMCController>(
        builder: (context, provider, child) => Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            const Text('ALTURA'),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: provider.imcModel.height.toStringAsFixed(0),
                    style: Theme.of(context)
                        .textTheme
                        .headline3
                        .copyWith(fontWeight: FontWeight.w900),
                  ),
                  TextSpan(
                    text: ' cm',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ],
              ),
            ),
            Slider(
              activeColor: Theme.of(context).accentColor,
              min: 100,
              max: 210,
              value: provider.imcModel.height,
              onChanged: (value) => provider.changeHeight(value),
            ),
          ],
        ),
      ),
    );
  }
}
