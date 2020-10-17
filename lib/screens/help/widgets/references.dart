import 'package:flutter/material.dart';

import '../../../texts.dart';

class References extends StatelessWidget {
  const References({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Fontes',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10),
        Text(
          wikiIMC,
          style: TextStyle(
            color: Colors.grey.shade600,
          ),
        ),
        SizedBox(height: 10),
        Text(
          wikiTMB,
          style: TextStyle(
            color: Colors.grey.shade600,
          ),
        ),
        SizedBox(height: 10),
        Text(
          duduHaluch,
          style: TextStyle(
            color: Colors.grey.shade600,
          ),
        ),
      ],
    );
  }
}
