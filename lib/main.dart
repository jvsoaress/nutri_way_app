import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nutri_way/screens/help/help_screen.dart';
import 'package:nutri_way/screens/results/results_screen.dart';
import 'package:provider/provider.dart';

import './colors.dart';
import 'controllers/imc_controller.dart';
import 'models/imc_model.dart';
import 'screens/home/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => IMCController(
        IMCModel.initial(),
      ),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Nutri Way',
        theme: ThemeData(
          appBarTheme: AppBarTheme(
            elevation: 0,
            textTheme: GoogleFonts.latoTextTheme(),
          ),
          iconTheme: ThemeData.light().iconTheme.copyWith(color: kTextColor),
          scaffoldBackgroundColor: Colors.white,
          textTheme: GoogleFonts.latoTextTheme()
              .apply(displayColor: kTextColor, bodyColor: kTextColor),
          primaryColor: Colors.white,
          accentColor: kSecondaryColor,
        ),
        home: HomeScreen(),
        routes: {
          HomeScreen.routeName: (context) => HomeScreen(),
          ResultsScreen.routeName: (context) => ResultsScreen(),
          HelpScreen.routeName: (context) => HelpScreen(),
        },
      ),
    );
  }
}
