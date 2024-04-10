import 'package:flutter/material.dart';

final ThemeData lightTheme = ThemeData.light(useMaterial3: true).copyWith(
  scaffoldBackgroundColor: const Color.fromRGBO(1, 190, 190, 1),
  unselectedWidgetColor: Colors.transparent,
  splashColor: const Color.fromRGBO(231, 167, 180, 1),
  highlightColor: Colors.white,
  colorScheme: const ColorScheme.light(),
  appBarTheme: const AppBarTheme(
    toolbarHeight: 120,
  ),
  pageTransitionsTheme: const PageTransitionsTheme(
    builders: {
      TargetPlatform.android: CupertinoPageTransitionsBuilder(),
    },
  ),
  textTheme: const TextTheme(
    titleLarge: TextStyle(
        fontSize: 52,
        fontWeight: FontWeight.bold,
        color: Colors.white70,
        fontFamily: 'ganiser'),
    bodyMedium:
        TextStyle(fontSize: 26, color: Colors.white70, fontFamily: 'ganiser'),
    headlineMedium: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: Colors.white,
      fontFamily: 'ganiser',
      letterSpacing: 3,
    ),
  ),
);
final ThemeData mobileLightTheme = ThemeData.light(useMaterial3: true).copyWith(
  unselectedWidgetColor: Colors.transparent,
  highlightColor: Colors.white,
  colorScheme: const ColorScheme.light(),
  // pageTransitionsTheme: const PageTransitionsTheme(
  //   builders: {
  //     TargetPlatform.windows: FadeUpwardsPageTransitionsBuilder(),
  //   },
  // ),
  appBarTheme: const AppBarTheme(
    toolbarHeight: 60,
  ),
  textTheme: const TextTheme(
    titleLarge: TextStyle(
        fontSize: 40,
        fontWeight: FontWeight.bold,
        color: Colors.white70,
        fontFamily: 'ganiser'),
    titleMedium: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold,
        color: Colors.white70,
        fontFamily: 'ganiser'),
    bodyMedium:
        TextStyle(fontSize: 16, color: Colors.white70, fontFamily: 'ganiser'),
    headlineMedium: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w300,
      color: Colors.white,
      fontFamily: 'ganiser',
      letterSpacing: 3,
    ),
  ),
);
final ThemeData mobileSmallLightTheme = mobileLightTheme.copyWith(
  textTheme: const TextTheme(
    titleLarge: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold,
        color: Colors.white70,
        fontFamily: 'ganiser'),
    titleMedium: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Colors.white70,
        fontFamily: 'ganiser'),
    bodyMedium:
        TextStyle(fontSize: 12, color: Colors.white70, fontFamily: 'ganiser'),
    headlineMedium: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.bold,
        color: Colors.white,
        fontFamily: 'ganiser'),
  ),
);
final ThemeData mobileMicroLightTheme = mobileLightTheme.copyWith(
  textTheme: const TextTheme(
    titleLarge: TextStyle(
        fontSize: 26,
        fontWeight: FontWeight.bold,
        color: Colors.white70,
        fontFamily: 'ganiser'),
    titleMedium: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold,
        color: Colors.white70,
        fontFamily: 'ganiser'),
    bodyMedium:
        TextStyle(fontSize: 10, color: Colors.white70, fontFamily: 'ganiser'),
  ),
);
