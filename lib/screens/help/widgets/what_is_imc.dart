import 'package:flutter/material.dart';

import '../../../texts.dart';

class WhatIsIMC extends StatelessWidget {
  const WhatIsIMC({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'O que é IMC?',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10),
        Text(
          whatIsIMC,
          style: TextStyle(
            fontSize: 16,
            color: Colors.grey.shade600,
          ),
        ),
        SizedBox(height: 10),
        Center(
          child: Image.asset(
            'assets/imc.png',
          ),
        ),
      ],
    );
  }
}
