import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  // Serene Canvas Palette
  static const Color primary = Color(0xFF1A1E29);
  static const Color secondary = Color(0xFFDCE4F8);
  static const Color tertiary = Color(0xFFFDE4EB);
  static const Color canvasBackground = Color(0xFFF7F9FD);
  static const Color surfaceElevation = Color(0xFFFFFFFF);
  static const Color subduedText = Color(0xFF7E8B9B);
  static const Color accentMint = Color(0xFFE0F5EE);

  // Serene Ambient Shadows (Level 2)
  static final List<BoxShadow> ambientShadow = [
    BoxShadow(
      color: const Color(0xFF1A1E29).withOpacity(0.05),
      offset: const Offset(0, 10),
      blurRadius: 24,
      spreadRadius: -4,
    ),
    BoxShadow(
      color: Colors.white.withOpacity(0.9),
      offset: const Offset(0, -2),
      blurRadius: 6,
    ),
  ];

  static ThemeData get lightTheme {
    // Base fonts via Google Fonts
    final displayFont = GoogleFonts.plusJakartaSans();
    final bodyFont = GoogleFonts.inter();

    return ThemeData(
      brightness: Brightness.light,
      primaryColor: primary,
      scaffoldBackgroundColor: canvasBackground,
      colorScheme: const ColorScheme.light(
        primary: primary,
        secondary: secondary,
        tertiary: tertiary,
        surface: surfaceElevation,
        background: canvasBackground,
      ),
      // Typography with strict 1.35 line-height for Khmer diacritics
      textTheme: TextTheme(
        displayLarge: GoogleFonts.kantumruyPro(
          height: 1.35,
          color: primary,
          letterSpacing: -0.03,
        ),
        titleLarge: GoogleFonts.kantumruyPro(
          height: 1.35,
          color: primary,
          fontWeight: FontWeight.bold,
          letterSpacing: -0.02,
        ),
        bodyLarge: GoogleFonts.kantumruyPro(height: 1.35, color: primary),
        bodyMedium: GoogleFonts.kantumruyPro(height: 1.35, color: subduedText),
        labelLarge: GoogleFonts.kantumruyPro(
          height: 1.35,
          color: primary,
          fontWeight: FontWeight.w600,
        ),
      ),
      // Pill & Organic Shapes
      cardTheme: CardThemeData(
        color: surfaceElevation,
        elevation: 0, // Shadows handled manually via containers
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24), // 1.5rem curvature
        ),
      ),
      useMaterial3: true,
    );
  }
}
