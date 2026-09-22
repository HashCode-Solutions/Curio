import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// Design tokens for Curio, lifted directly from the design concept:
/// ink navy shell, paper interior, marigold accent, moss = correct,
/// raspberry = incorrect, teal = secondary.
class AppColors {
  AppColors._();

  static const ink = Color(0xFF1B1F3B);
  static const inkSoft = Color(0xFF2A3057);
  static const paper = Color(0xFFF5F6F1);
  static const paperDim = Color(0xFFE8E9E1);
  static const marigold = Color(0xFFE8A33D);
  static const moss = Color(0xFF4C8C6B);
  static const raspberry = Color(0xFFD6455A);
  static const teal = Color(0xFF2E6E71);

  // Topic tints (light backgrounds for topic cards on Home)
  static const techTint = Color(0xFFEFF4F1);
  static const sciTint = Color(0xFFFBF1E5);
  static const histTint = Color(0xFFF7EBEA);
  static const geoTint = Color(0xFFECF3EE);
}

class AppTextStyles {
  AppTextStyles._();

  static TextStyle get displaySerif => GoogleFonts.fraunces(
        fontWeight: FontWeight.w600,
        color: AppColors.paper,
      );

  static TextStyle get displaySerifItalic => GoogleFonts.fraunces(
        fontWeight: FontWeight.w600,
        fontStyle: FontStyle.italic,
        color: AppColors.paper,
      );

  static TextStyle get ui => GoogleFonts.spaceGrotesk(
        color: AppColors.ink,
      );
}

class AppTheme {
  AppTheme._();

  static ThemeData get light {
    final base = ThemeData.light(useMaterial3: true);
    return base.copyWith(
      scaffoldBackgroundColor: AppColors.paper,
      colorScheme: base.colorScheme.copyWith(
        primary: AppColors.ink,
        secondary: AppColors.marigold,
        error: AppColors.raspberry,
        surface: AppColors.paper,
      ),
      textTheme: GoogleFonts.spaceGroteskTextTheme(base.textTheme).copyWith(
        displayLarge: GoogleFonts.fraunces(
          fontWeight: FontWeight.w600,
          fontSize: 40,
          color: AppColors.ink,
        ),
        headlineMedium: GoogleFonts.fraunces(
          fontWeight: FontWeight.w600,
          fontSize: 22,
          color: AppColors.ink,
        ),
        titleMedium: GoogleFonts.fraunces(
          fontWeight: FontWeight.w600,
          fontSize: 18,
          color: AppColors.ink,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.ink,
          foregroundColor: AppColors.paper,
          padding: const EdgeInsets.symmetric(vertical: 16),
          textStyle: GoogleFonts.spaceGrotesk(
            fontWeight: FontWeight.w600,
            fontSize: 15,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }
}
