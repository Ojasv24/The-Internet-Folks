import 'package:events/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.light(
            primary: Colors.white,
            onPrimary: Colors.black,
            secondary: HexColor('#5669ff')),
        useMaterial3: false,
        appBarTheme: const AppBarTheme(elevation: 0),
        fontFamily: GoogleFonts.inter().fontFamily,
      ),
      home: const HomeWidget(),
    );
  }
}
