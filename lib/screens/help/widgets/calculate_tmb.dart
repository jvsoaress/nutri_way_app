import 'package:flutter/material.dart';
import 'package:nutri_way/screens/help/widgets/mifflin_st_jeor_table.dart';

import '../../../texts.dart';
import 'fao_oms_table.dart';
import 'harris_and_benedict_table.dart';

class CalculateTMB extends StatelessWidget {
  const CalculateTMB({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Cálculo da TMB',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10),
        Text(
          calculateTMB,
          style: TextStyle(
            fontSize: 16,
            color: Colors.grey.shade600,
          ),
        ),
        SizedBox(height: 40),
        Text(
          'Harris e Benedict',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          harrisAndBenedictCaption,
          style: TextStyle(
            color: Colors.grey,
            fontSize: 11,
          ),
        ),
        HarrisAndBenedictTable(),
        SizedBox(height: 40),
        Text(
          'FAO/OMS',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          faoOmsCaption,
          style: TextStyle(
            color: Colors.grey,
            fontSize: 11,
          ),
        ),
        FAOOMSTable(),
        SizedBox(height: 40),
        Text(
          'Mifflin St. Jeor',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          mifflinStJeorCaption,
          style: TextStyle(
            color: Colors.grey,
            fontSize: 11,
          ),
        ),
        MifflinStJeorTable(),
      ],
    );
  }
}
