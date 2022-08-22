import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';


class MyTheme {
  static ThemeData lightThemeData(BuildContext context) => ThemeData(
    primarySwatch: Colors.deepPurple,
    fontFamily: GoogleFonts.poppins().fontFamily,
    canvasColor: creamColor,
    cardColor: Colors.white,
    accentColor: darkBluishColor,
    buttonColor: darkBluishColor,
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
        fontFamily: GoogleFonts.poppins().fontFamily,
        canvasColor: darkCreamColor,
        cardColor: Colors.black,
        accentColor: Colors.white,
        brightness: Brightness.dark,
        buttonColor: lightBluishColor,
        appBarTheme: AppBarTheme(
            color: Colors.black,
            iconTheme: IconThemeData(
              color: Colors.white,
            ),
            // titleTextStyle: TextStyle(
            //   color: Colors.black,
            // ),
          textTheme: Theme.of(context).textTheme.copyWith(headline6: context.textTheme.headline6?.copyWith(color: Colors.white)),
        ),
      );

  //COLORS
static Color creamColor = Color(0xfff5f5f5);
  static Color darkCreamColor = Vx.gray900;
static Color darkBluishColor = Color(0xff403b58);
  static Color lightBluishColor = Vx.indigo500;
}