import 'package:flutter/material.dart';

class MacrofactorTheme {
  MacrofactorTheme._();

  static ThemeData getTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    primaryColor: const Color(0x0C0C0C0C),
    colorScheme: ColorScheme.fromSeed(
      seedColor: const Color(0x0C0C0C0C),
      primary: const Color(0x0C0C0C0C),
      secondary: const Color(0xFF1F1F1F),
    ),
  );
}
