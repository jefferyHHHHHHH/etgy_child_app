import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static const Color skyBlue = Color(0xFF57C6FF);
  static const Color coral = Color(0xFFFF7F6A);
  static const Color banana = Color(0xFFFFD25E);
  static const Color mint = Color(0xFF57E1B1);
  static const Color ink = Color(0xFF23313A);
  static const Color paper = Color(0xFFF6FBFF);

  static ThemeData get lightTheme {
    final textTheme = GoogleFonts.nunitoTextTheme().copyWith(
      headlineLarge: GoogleFonts.nunito(
        fontSize: 30,
        fontWeight: FontWeight.w800,
        color: ink,
      ),
      headlineMedium: GoogleFonts.nunito(
        fontSize: 24,
        fontWeight: FontWeight.w800,
        color: ink,
      ),
      titleLarge: GoogleFonts.nunito(
        fontSize: 20,
        fontWeight: FontWeight.w700,
        color: ink,
      ),
      titleMedium: GoogleFonts.nunito(
        fontSize: 16,
        fontWeight: FontWeight.w700,
        color: ink,
      ),
      bodyLarge: GoogleFonts.nunito(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: ink,
      ),
      bodyMedium: GoogleFonts.nunito(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: ink.withValues(alpha: 0.88),
      ),
    );

    return ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: paper,
      colorScheme: const ColorScheme.light(
        primary: skyBlue,
        secondary: mint,
        error: Color(0xFFE34D4D),
        surface: Colors.white,
      ),
      textTheme: textTheme,
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        foregroundColor: ink,
        elevation: 0,
        scrolledUnderElevation: 0,
        shadowColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        centerTitle: false,
        titleTextStyle: textTheme.titleLarge,
      ),
      cardTheme: CardThemeData(
        color: Colors.white,
        margin: EdgeInsets.zero,
        elevation: 1.5,
        shadowColor: ink.withValues(alpha: 0.10),
        surfaceTintColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
          side: BorderSide(color: ink.withValues(alpha: 0.06)),
        ),
      ),
      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          backgroundColor: coral,
          foregroundColor: Colors.white,
          minimumSize: const Size.fromHeight(52),
          textStyle: textTheme.titleMedium,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
          ),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: Colors.white,
        labelStyle: textTheme.bodyMedium,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 14,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18),
          borderSide: BorderSide(color: skyBlue.withValues(alpha: 0.2)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18),
          borderSide: const BorderSide(color: skyBlue, width: 2),
        ),
      ),
      chipTheme: ChipThemeData(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
        side: BorderSide.none,
        selectedColor: banana,
        backgroundColor: Colors.white,
        labelStyle: textTheme.bodyMedium,
      ),
    );
  }
}
