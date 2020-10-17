import 'package:flutter/material.dart';

import '../../../texts.dart';

class MifflinStJeorTable extends StatelessWidget {
  const MifflinStJeorTable({
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
            DataCell(Text(mifflinStJeorFemale)),
          ],
        ),
        DataRow(
          cells: [
            DataCell(Text('Masculino')),
            DataCell(Text(mifflinStJeorMale)),
          ],
        ),
      ],
    );
  }
}
