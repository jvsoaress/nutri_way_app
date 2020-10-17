import 'package:flutter/material.dart';

class FAOOMSTable extends StatelessWidget {
  const FAOOMSTable({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DataTable(
      columns: [
        DataColumn(label: Text('Idade')),
        DataColumn(label: Text('Masculino')),
        DataColumn(label: Text('Feminino')),
      ],
      rows: [
        DataRow(
          cells: [
            DataCell(Text('10 a 18')),
            DataCell(Text('(17,686 x P) + 658,2')),
            DataCell(Text(('13,384 x P) + 692,6'))),
          ],
        ),
        DataRow(
          cells: [
            DataCell(Text('18 a 30')),
            DataCell(Text('(15,057 x P) + 692,2')),
            DataCell(Text('(14,818 x P) + 486,6')),
          ],
        ),
        DataRow(
          cells: [
            DataCell(Text('30 a 60')),
            DataCell(Text('(11,472 x P) + 873,1')),
            DataCell(Text('(8,126 x P) + 845,6')),
          ],
        ),
        DataRow(
          cells: [
            DataCell(Text('Mais que 60')),
            DataCell(Text('(11,711 x P) + 587,7')),
            DataCell(Text('(9,082 x P) + 658,5')),
          ],
        ),
      ],
    );
  }
}
