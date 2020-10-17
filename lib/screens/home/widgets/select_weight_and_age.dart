import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../controllers/imc_controller.dart';

class SelectWeightAndAge extends StatelessWidget {
  const SelectWeightAndAge({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<IMCController>(
      builder: (context, value, child) => Row(
        children: <Widget>[
          Expanded(
            child: Card(
              elevation: 2,
              margin: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  const Text('PESO'),
                  Text(
                    value.imcModel.weight.toString(),
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.remove),
                        onPressed: value.decrementWeight,
                      ),
                      IconButton(
                        icon: Icon(Icons.add),
                        onPressed: value.incrementWeight,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Card(
              elevation: 2,
              margin: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  const Text('IDADE'),
                  Text(
                    value.imcModel.age.toString(),
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.remove),
                        onPressed: value.decrementAge,
                      ),
                      IconButton(
                        icon: Icon(Icons.add),
                        onPressed: value.incrementAge,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
