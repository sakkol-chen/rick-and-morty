import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'serene_canvas_tokens.dart'; // Import your tokens!

class AppTheme {
  AppTheme._(); // Prevent instantiation

  static ThemeData get lightTheme {
    return ThemeData(
      brightness: Brightness.light,
      primaryColor: SereneCanvasTokens.primary,
      scaffoldBackgroundColor: SereneCanvasTokens.background,

      // 1. Color Scheme mapped directly from Tokens
      colorScheme: const ColorScheme.light(
        primary: SereneCanvasTokens.primary,
        secondary: SereneCanvasTokens.secondaryContainer,
        tertiary: SereneCanvasTokens.tertiaryPastel,
        surface: SereneCanvasTokens.surfaceContainerLowest,
        background: SereneCanvasTokens.background,
        error: SereneCanvasTokens.error,
      ),

      // 2. Typography (Keeping your Khmer diacritics requirement)
      textTheme: TextTheme(
        displayLarge: GoogleFonts.kantumruyPro(
          height: 1.35,
          color: SereneCanvasTokens.primary,
          letterSpacing: -0.03,
        ),
        titleLarge: GoogleFonts.kantumruyPro(
          height: 1.35,
          color: SereneCanvasTokens.primary,
          fontWeight: FontWeight.bold,
          letterSpacing: -0.02,
        ),
        bodyLarge: GoogleFonts.kantumruyPro(
          height: 1.35,
          color: SereneCanvasTokens.primary,
        ),
        bodyMedium: GoogleFonts.kantumruyPro(
          height: 1.35,
          color: SereneCanvasTokens.subduedText,
        ),
        labelLarge: GoogleFonts.kantumruyPro(
          height: 1.35,
          color: SereneCanvasTokens.primary,
          fontWeight: FontWeight.w600,
        ),
      ),

      // 3. Shapes mapped from Tokens
      cardTheme: CardThemeData(
        color: SereneCanvasTokens.surfaceContainerLowest,
        elevation: 0, // Shadows handled manually via ambientShadow in Tokens
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(SereneCanvasTokens.radiusMd),
        ),
      ),
      useMaterial3: true,
    );
  }
}
