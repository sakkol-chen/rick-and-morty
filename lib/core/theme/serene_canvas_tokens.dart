// serene_canvas_tokens.dart
//
// Single responsibility: hold the "Serene Canvas" design system's raw
// values (colors, radii, spacing, elevation, typography) as defined in
// DESIGN.md. No widgets, no business logic — just tokens.
//
// Import this wherever a widget needs a color, a radius, or a text style.

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SereneCanvasTokens {
  SereneCanvasTokens._();

  // ---------------------------------------------------------------------
  // Colors
  // ---------------------------------------------------------------------
  static const background = Color(0xFFF7F9FD);
  static const surfaceContainerLowest = Color(0xFFFFFFFF);
  static const surfaceContainerLow = Color(0xFFF2F4F8);
  static const primary = Color(0xFF1A1E29); // midnight charcoal
  static const onPrimary = Color(0xFFFFFFFF);
  static const secondaryContainer = Color(0xFFDAE2F6); // soft periwinkle
  static const tertiaryPastel = Color(0xFFFDE4EB); // whispering rose-lavender
  static const accentMint = Color(0xFFE0F5EE);
  static const subduedText = Color(0xFF7E8B9B);
  static const onSurfaceVariant = Color(0xFF46464C);
  static const outlineVariant = Color(0xFFC6C6CC);
  static const error = Color(0xFFBA1A1A);
  static const aliveDot = Color(0xFFAEC0EE); // light periwinkle dot

  // ---------------------------------------------------------------------
  // Radii
  // ---------------------------------------------------------------------
  static const radiusSm = 8.0;
  static const radiusDefault = 16.0;
  static const radiusMd = 24.0;
  static const radiusLg = 32.0;
  static const radiusFull = 999.0;

  // ---------------------------------------------------------------------
  // Spacing
  // ---------------------------------------------------------------------
  static const margin = 24.0; // 1.5rem
  static const gutter = 16.0; // 1rem
  static const spaceXs = 4.0;
  static const spaceSm = 8.0;
  static const spaceMd = 16.0;
  static const spaceLg = 24.0;
  static const spaceXl = 32.0;

  // ---------------------------------------------------------------------
  // Elevation
  // ---------------------------------------------------------------------

  /// Level 2 — floating ambient card (list rows, grid cards, banners).
  static const List<BoxShadow> ambientShadow = [
    BoxShadow(
      color: Color(0x0D1A1E29), // rgba(26,30,41,0.05)
      offset: Offset(0, 10),
      blurRadius: 24,
      spreadRadius: -4,
    ),
    BoxShadow(
      color: Color(0xE6FFFFFF), // rgba(255,255,255,0.9)
      offset: Offset(0, -2),
      blurRadius: 6,
    ),
  ];

  /// Level 3 — focused/interactive pop (floating bottom nav, players).
  static const List<BoxShadow> popShadow = [
    BoxShadow(
      color: Color(0x141A1E29), // rgba(26,30,41,0.08)
      offset: Offset(0, 16),
      blurRadius: 36,
      spreadRadius: -6,
    ),
  ];

  // ---------------------------------------------------------------------
  // Typography
  // ---------------------------------------------------------------------
  static TextStyle headlineDisplayMobile({Color? color}) =>
      GoogleFonts.plusJakartaSans(
        fontSize: 28,
        fontWeight: FontWeight.w700,
        height: 34 / 28,
        letterSpacing: -0.02 * 28,
        color: color ?? primary,
      );

  static TextStyle headlineMd({Color? color}) => GoogleFonts.plusJakartaSans(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        height: 26 / 20,
        letterSpacing: -0.01 * 20,
        color: color ?? primary,
      );

  static TextStyle headlineSm({Color? color}) => GoogleFonts.plusJakartaSans(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        height: 22 / 16,
        color: color ?? primary,
      );

  static TextStyle bodyMd({Color? color}) => GoogleFonts.inter(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        height: 20 / 14,
        letterSpacing: -0.01 * 14,
        color: color ?? primary,
      );

  static TextStyle bodySm({Color? color}) => GoogleFonts.inter(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        height: 16 / 12,
        color: color ?? subduedText,
      );

  static TextStyle labelLg({Color? color}) => GoogleFonts.inter(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        height: 18 / 14,
        letterSpacing: 0.01 * 14,
        color: color ?? primary,
      );

  static TextStyle labelMd({Color? color}) => GoogleFonts.inter(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        height: 16 / 12,
        letterSpacing: 0.02 * 12,
        color: color ?? subduedText,
      );

  static TextStyle labelSm({Color? color}) => GoogleFonts.inter(
        fontSize: 10,
        fontWeight: FontWeight.w600,
        height: 14 / 10,
        letterSpacing: 0.03 * 10,
        color: color ?? subduedText,
      );
}