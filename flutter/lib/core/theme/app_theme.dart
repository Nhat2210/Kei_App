import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';
export 'app_colors.dart';

class AppTheme {
  static ThemeData get lightTheme {
    final base = ThemeData.light();
    return base.copyWith(
      scaffoldBackgroundColor: AppColors.washi,
      primaryColor: AppColors.teal,
      colorScheme: const ColorScheme.light(
        primary: AppColors.teal,
        secondary: AppColors.hanko,
        surface: AppColors.paperCard,
        error: AppColors.hanko,
        onPrimary: Colors.white,
        onSecondary: Colors.white,
        onSurface: AppColors.sumi,
        onError: Colors.white,
      ),
      textTheme: _buildTextTheme(base.textTheme),
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.washi,
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(color: AppColors.sumi),
        titleTextStyle: TextStyle(
          color: AppColors.sumi,
          fontSize: 20,
          fontWeight: FontWeight.w700,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.teal,
          foregroundColor: Colors.white,
          elevation: 0,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
          textStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: AppColors.washiDeep),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: AppColors.washiDeep),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: AppColors.teal),
        ),
        labelStyle: const TextStyle(color: AppColors.sumiSoft),
      ),
    );
  }

  static TextTheme _buildTextTheme(TextTheme base) {
    return GoogleFonts.nunitoTextTheme(base).copyWith(
      displayLarge: GoogleFonts.nunito(textStyle: base.displayLarge?.copyWith(color: AppColors.sumi, fontWeight: FontWeight.bold)),
      displayMedium: GoogleFonts.nunito(textStyle: base.displayMedium?.copyWith(color: AppColors.sumi, fontWeight: FontWeight.bold)),
      displaySmall: GoogleFonts.nunito(textStyle: base.displaySmall?.copyWith(color: AppColors.sumi, fontWeight: FontWeight.bold)),
      headlineLarge: GoogleFonts.nunito(textStyle: base.headlineLarge?.copyWith(color: AppColors.sumi, fontWeight: FontWeight.w700)),
      headlineMedium: GoogleFonts.nunito(textStyle: base.headlineMedium?.copyWith(color: AppColors.sumi, fontWeight: FontWeight.w700)),
      headlineSmall: GoogleFonts.nunito(textStyle: base.headlineSmall?.copyWith(color: AppColors.sumi, fontWeight: FontWeight.w700)),
      titleLarge: GoogleFonts.nunito(textStyle: base.titleLarge?.copyWith(color: AppColors.sumi, fontWeight: FontWeight.w700)),
      titleMedium: GoogleFonts.nunito(textStyle: base.titleMedium?.copyWith(color: AppColors.sumi, fontWeight: FontWeight.w600)),
      titleSmall: GoogleFonts.nunito(textStyle: base.titleSmall?.copyWith(color: AppColors.sumi, fontWeight: FontWeight.w600)),
      bodyLarge: GoogleFonts.nunito(textStyle: base.bodyLarge?.copyWith(color: AppColors.sumi)),
      bodyMedium: GoogleFonts.nunito(textStyle: base.bodyMedium?.copyWith(color: AppColors.sumi)),
      labelLarge: GoogleFonts.nunito(textStyle: base.labelLarge?.copyWith(color: AppColors.sumiSoft, fontWeight: FontWeight.w600)),
    );
  }

  // Helper method for Japanese Text style (Zen Kaku Gothic New)
  static TextStyle jpTextStyle(TextStyle baseStyle) {
    return GoogleFonts.nunito(textStyle: baseStyle);
  }

  // Helper method for Numbers (JetBrains Mono)
  static TextStyle numberStyle(TextStyle baseStyle) {
    return GoogleFonts.jetBrainsMono(textStyle: baseStyle);
  }
}
