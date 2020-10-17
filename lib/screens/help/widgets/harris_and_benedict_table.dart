import 'package:flutter/material.dart';

import '../../../texts.dart';

class HarrisAndBenedictTable extends StatelessWidget {
  const HarrisAndBenedictTable({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DataTable(
      columns: [
        DataColumn(label: Text('Sexo')),
        DataColumn(label: Text('Fórmula')),
      ],
      rows: [
        DataRow(
          cells: [
            DataCell(Text('Feminino')),
            DataCell(Text(harrisAndBenedictFemale)),
          ],
        ),
        DataRow(
          cells: [
            DataCell(Text('Masculino')),
            DataCell(Text(harrisAndBenedictMale)),
          ],
        ),
      ],
    );
  }
}
