import 'package:flutter/material.dart';
import 'package:flutter_portfolio/screens/main_screen.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Milton Chelani (jmrchelani)',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryTextTheme: TextTheme(bodyText2: GoogleFonts.lilyScriptOne()),
      ),
      home: MainScreen(),
    );
  }
}
