import 'package:flutter/material.dart';

class AppTheme {
  static const black = Color(0xff000000);

  static const white = Color(0xFFFFFFFF);
  static final theme = ThemeData(
    fontFamily: "GoogleSans",
    textTheme: const TextTheme(
      displayLarge: TextStyle(
        color: black,
        fontWeight: FontWeight.bold,
        fontSize: 32.0,
        height: 1.5,
        letterSpacing: 0.5,
      ),
      displayMedium: TextStyle(
        color: black,
        fontWeight: FontWeight.w600,
        fontSize: 28.0,
        height: 1.4,
        letterSpacing: 0.5,
      ),
      displaySmall: TextStyle(
        color: black,
        fontWeight: FontWeight.w500,
        fontSize: 24.0,
        height: 1.4,
        letterSpacing: 0.5,
      ),
      bodyLarge: TextStyle(
        color: black,
        fontWeight: FontWeight.normal,
        fontSize: 18.0,
        height: 1.5,
        letterSpacing: 0.5,
      ),
      bodyMedium: TextStyle(
        color: black,
        fontWeight: FontWeight.normal,
        fontSize: 16.0,
        height: 1.5,
        letterSpacing: 0.25,
      ),
      bodySmall: TextStyle(
        color: black,
        fontWeight: FontWeight.normal,
        fontSize: 14.0,
        height: 1.4,
        letterSpacing: 0.5,
      ),
      labelLarge: TextStyle(
        color: black,
        fontWeight: FontWeight.normal,
        fontSize: 12.0,
        height: 1.3,
        letterSpacing: 0.4,
      ),
      labelSmall: TextStyle(
        color: black,
        fontWeight: FontWeight.w400,
        fontSize: 10.0,
        height: 1.4,
        letterSpacing: 1.5,
      ),
    ),
  );
}
