import 'package:flutter/material.dart';
import 'package:nutri_way/screens/help/widgets/calculate_tmb.dart';
import 'package:nutri_way/screens/help/widgets/references.dart';
import 'package:nutri_way/screens/help/widgets/what_is_tmb.dart';

import 'widgets/what_is_imc.dart';

class HelpScreen extends StatelessWidget {
  static const routeName = '/help';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Ajuda',
          style: TextStyle(fontSize: 18),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              WhatIsIMC(),
              SizedBox(height: 60),
              WhatIsTMB(),
              SizedBox(height: 60),
              CalculateTMB(),
              SizedBox(height: 60),
              References(),
            ],
          ),
        ),
      ),
    );
  }
}
