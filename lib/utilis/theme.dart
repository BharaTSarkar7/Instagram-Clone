import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instagram_clone/utilis/colors.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTheme {
  // ignore: non_constant_identifier_names
  static ThemeData LightTheme(BuildContext contect) => ThemeData(
        canvasColor: const Color.fromARGB(231, 255, 255, 255),
        cardColor: Vx.white,
        fontFamily: GoogleFonts.poppins().fontFamily,
        // ignore: prefer_const_constructors
        appBarTheme: AppBarTheme(
          color: Vx.white,
          elevation: 0.0,
          iconTheme: const IconThemeData(
            color: Vx.black,
          ),
        ),
      );

  // ignore: non_constant_identifier_names
  static ThemeData DarkTheme(BuildContext contect) => ThemeData(
        brightness: Brightness.dark,
        canvasColor: mobileBackgroundColor,
        cardColor: mobileSearchColor,
        fontFamily: GoogleFonts.poppins().fontFamily,
        // ignore: prefer_const_constructors
        appBarTheme: AppBarTheme(
          color: Vx.white,
          elevation: 0.0,
          iconTheme: const IconThemeData(
            color: Vx.white,
          ),
        ),
      );
}
