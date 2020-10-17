import 'package:flutter/material.dart';
import 'package:nutri_way/screens/help/help_screen.dart';
import 'package:provider/provider.dart';

import '../../controllers/imc_controller.dart';
import 'widgets/imc_display.dart';

class ResultsScreen extends StatelessWidget {
  static const routeName = '/results';

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<IMCController>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Resultado',
          style: TextStyle(fontSize: 18),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.help_outline),
            onPressed: () {
              Navigator.of(context).pushNamed(HelpScreen.routeName);
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Índice de Massa Corporal (IMC)',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IMCDisplay(imcModel: provider.imcModel),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    'Taxa Metabólica Basal (TMB)',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Expanded(
                  flex: 6,
                  child: ListView.builder(
                    itemCount: provider.tmbList.length,
                    itemBuilder: (context, index) => ListTile(
                      title: Text(
                        '${provider.tmbList[index]["title"]}',
                        style: TextStyle(color: Colors.grey),
                      ),
                      trailing: Text(
                        '${provider.tmbList[index]["value"].value} kcal/dia',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
