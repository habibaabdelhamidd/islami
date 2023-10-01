import 'package:flutter/material.dart';

class MyTheme {
  static Color lightPrimary = const Color(0xb7935f00);
  static Color darkPrimary = const Color(0xff141A2E);
  static Color lightSecondary = Colors.black;
  static Color darkSecondary = const Color(0xfffacc1d);
  static ThemeData light = ThemeData(
      textTheme: const TextTheme(
          titleMedium: TextStyle(
              fontFamily: "ElMessiri",
              fontWeight: FontWeight.w600,
              fontSize: 25,
              color: Colors.black),
          titleSmall:
              TextStyle(fontSize: 25, fontFamily: "Inter", color: Colors.black),
          labelMedium:
              TextStyle(fontSize: 25, fontFamily: "Inter", color: Colors.white),
          bodySmall:
              TextStyle(color: Colors.black, fontSize: 20, fontFamily: "Inter"),
          labelSmall: TextStyle(fontSize: 20, color: Colors.black)),
      cardTheme: CardTheme(
        color: Colors.white,
        surfaceTintColor: Colors.white,
        elevation: 20,
        margin: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      ),
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: const AppBarTheme(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 40,
          )),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: lightSecondary,
          unselectedItemColor: Colors.white,
          selectedIconTheme: const IconThemeData(size: 30)),
      colorScheme: ColorScheme.fromSeed(
          background: Colors.white,
          seedColor: lightPrimary,
          primary: lightPrimary,
          onPrimary: Colors.white),
      useMaterial3: true,
      dividerColor: lightPrimary,
      bottomSheetTheme:
          const BottomSheetThemeData(backgroundColor: Colors.white));

  static ThemeData dark = ThemeData(
      textTheme: TextTheme(
        titleMedium: const TextStyle(
            fontFamily: "ElMessiri",
            fontWeight: FontWeight.bold,
            fontSize: 25,
            color: Colors.white),
        titleSmall: const TextStyle(
            fontSize: 25, fontFamily: "Inter", color: Colors.white),
        labelMedium: const TextStyle(
            fontSize: 25, fontFamily: "Inter", color: Colors.black),
        bodySmall:
            TextStyle(color: darkSecondary, fontSize: 20, fontFamily: "Inter"),
        labelSmall: const TextStyle(fontSize: 20, color: Colors.white),
      ),
      cardTheme: CardTheme(
        color: darkPrimary,
        surfaceTintColor: Colors.transparent,
        elevation: 20,
        margin: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      ),
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: const AppBarTheme(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 40,
          )),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: darkSecondary,
          unselectedItemColor: Colors.white,
          selectedIconTheme: const IconThemeData(size: 40)),
      colorScheme: ColorScheme.fromSeed(
        background: darkPrimary,
        seedColor: darkSecondary,
        primary: darkPrimary,
        onPrimary: Colors.white,
      ),
      useMaterial3: true,
      dividerColor: darkSecondary,
      bottomSheetTheme: BottomSheetThemeData(backgroundColor: darkPrimary));
}
