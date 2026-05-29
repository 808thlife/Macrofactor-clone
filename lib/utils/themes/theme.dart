import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
    textTheme: GoogleFonts.dmSansTextTheme().copyWith(
      headlineLarge: GoogleFonts.dmSans(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      headlineMedium: GoogleFonts.dmSans(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      headlineSmall: GoogleFonts.dmSans(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      bodyMedium: GoogleFonts.dmSans(fontSize: 14, color: Colors.white),
    ),
  );
}
