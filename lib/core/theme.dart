import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTheme {
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,
    fontFamily: GoogleFonts.jetBrainsMono().fontFamily,
    textTheme: const TextTheme(
      bodyLarge: TextStyle(fontSize: 16, color: Colors.black, ),
      bodyMedium: TextStyle(fontSize: 14, color: Colors.black,),
      titleLarge: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
      titleMedium: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      elevation: 0,
      titleTextStyle: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
      iconTheme: IconThemeData(color: Colors.black),
    ),
    buttonTheme: const ButtonThemeData(
      buttonColor: Colors.black,
      textTheme: ButtonTextTheme.primary,
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: Colors.black,
        side: const BorderSide(color: Colors.black),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        textStyle: const TextStyle(fontWeight: FontWeight.bold),
      ),
    ),
    iconTheme: const IconThemeData(color: Colors.black),
    inputDecorationTheme: const InputDecorationTheme(
      filled: true,
      fillColor: Colors.white,
      border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
      enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black, width: 2)),
      labelStyle: TextStyle(color: Colors.black),
      hintStyle: TextStyle(color: Colors.grey),
    ),
  );


  // ============================== DARK THEME ===================================================
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Colors.black,
    fontFamily: GoogleFonts.jetBrainsMono().fontFamily,
    textTheme: const TextTheme(
      bodyLarge: TextStyle(fontSize: 16, color: Colors.white, ),
      bodyMedium: TextStyle(fontSize: 14, color: Colors.white,),
      titleLarge: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
      titleMedium: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.black,
      elevation: 0,
      titleTextStyle: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
      iconTheme: IconThemeData(color: Colors.white),
    ),
    buttonTheme: const ButtonThemeData(
      buttonColor: Colors.white,
      textTheme: ButtonTextTheme.primary,
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: Colors.white,
        side: BorderSide(color: Colors.white),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        textStyle: TextStyle(fontWeight: FontWeight.bold),
      ),
    ),
    iconTheme: const IconThemeData(color: Colors.white),
    inputDecorationTheme: const InputDecorationTheme(
      filled: true,
      fillColor: Colors.black,
      border: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
      enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white, width: 2)),
      labelStyle: TextStyle(color: Colors.white),
      hintStyle: TextStyle(color: Colors.grey),
    ),
  );
}
