import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class MyTheme {
  static ThemeData lightThemeData(BuildContext context) => ThemeData(
    primarySwatch: Colors.deepPurple,
    fontFamily: GoogleFonts.lato().fontFamily,
    appBarTheme: AppBarTheme(
        color: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        titleTextStyle: TextStyle(
          color: Colors.black,
        )
    ),
  );

  static ThemeData darkThemeData(BuildContext context) =>
      ThemeData(
        brightness: Brightness.dark,
      );
}