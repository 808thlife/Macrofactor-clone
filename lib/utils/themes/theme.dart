import 'package:flutter/material.dart';

class MacrofactorTheme {
  MacrofactorTheme._();

  static ThemeData getTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    // primaryColor: const Color(0xFF1F1F1F),
    colorScheme: ColorScheme.fromSeed(
      seedColor: const Color(0x0C0C0C0C),
      primary: const Color(0xFF1F1F1F),
      secondary: const Color(0x0C0C0C0C),
      onPrimary: Colors.white,
      onSecondary: Colors.white,
      shadow: const Color(0xFFAEAEAE),
      surface: const Color(0xFF333333),
    ),
    textTheme: TextTheme(
      headlineLarge: TextStyle(fontSize: 20, color: Colors.white),
    ),
  );
}
