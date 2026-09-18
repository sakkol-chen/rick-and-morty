// serene_canvas_theme.dart
//
// Additive to `serene_canvas_tokens.dart` — does NOT modify it.
// `SereneCanvasTokens` keeps its existing static colors/radii/spacing/
// typography exactly as-is (treated as the LIGHT theme defaults), so any
// component already referencing `SereneCanvasTokens.primary`,
// `SereneCanvasTokens.background`, etc. keeps working unchanged.
//
// This file introduces:
//   1. `SereneCanvasColorScheme` — a ThemeExtension holding the palette,
//      with `.light` (mirrors SereneCanvasTokens exactly) and `.dark`
//      (new dark-mode palette) instances.
//   2. `SereneCanvasElevation` — light/dark shadow sets (white highlight
//      shadows look wrong on dark surfaces, so dark gets its own).
//   3. `SereneCanvasTheme.light` / `SereneCanvasTheme.dark` — ready-to-use
//      `ThemeData` for `MaterialApp(theme: ..., darkTheme: ...)`.
//
// Migration is opt-in: existing widgets using `SereneCanvasTokens.xxx`
// directly are unaffected. New/updated widgets can instead read
// `Theme.of(context).extension<SereneCanvasColorScheme>()!` to get
// automatic light/dark switching.

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'serene_canvas_tokens.dart';

// ===========================================================================
// Color scheme (theme-aware palette)
// ===========================================================================

@immutable
class SereneCanvasColorScheme extends ThemeExtension<SereneCanvasColorScheme> {
  final Color background;
  final Color surfaceContainerLowest;
  final Color surfaceContainerLow;
  final Color primary;
  final Color onPrimary;
  final Color secondaryContainer;
  final Color onSecondaryContainer;
  final Color tertiaryPastel;
  final Color onTertiaryPastel;
  final Color accentMint;
  final Color onAccentMint;
  final Color subduedText;
  final Color onSurfaceVariant;
  final Color outlineVariant;
  final Color error;
  final Color aliveDot;

  const SereneCanvasColorScheme({
    required this.background,
    required this.surfaceContainerLowest,
    required this.surfaceContainerLow,
    required this.primary,
    required this.onPrimary,
    required this.secondaryContainer,
    required this.onSecondaryContainer,
    required this.tertiaryPastel,
    required this.onTertiaryPastel,
    required this.accentMint,
    required this.onAccentMint,
    required this.subduedText,
    required this.onSurfaceVariant,
    required this.outlineVariant,
    required this.error,
    required this.aliveDot,
  });

  /// Mirrors `SereneCanvasTokens` exactly — the existing look stays
  /// pixel-identical for anything migrated to the theme-aware API.
  static const light = SereneCanvasColorScheme(
    background: SereneCanvasTokens.background,
    surfaceContainerLowest: SereneCanvasTokens.surfaceContainerLowest,
    surfaceContainerLow: SereneCanvasTokens.surfaceContainerLow,
    primary: SereneCanvasTokens.primary,
    onPrimary: SereneCanvasTokens.onPrimary,
    secondaryContainer: SereneCanvasTokens.secondaryContainer,
    onSecondaryContainer: SereneCanvasTokens.primary,
    tertiaryPastel: SereneCanvasTokens.tertiaryPastel,
    onTertiaryPastel: SereneCanvasTokens.primary,
    accentMint: SereneCanvasTokens.accentMint,
    onAccentMint: SereneCanvasTokens.primary,
    subduedText: SereneCanvasTokens.subduedText,
    onSurfaceVariant: SereneCanvasTokens.onSurfaceVariant,
    outlineVariant: SereneCanvasTokens.outlineVariant,
    error: SereneCanvasTokens.error,
    aliveDot: SereneCanvasTokens.aliveDot,
  );

  /// New dark palette. Kept in the same family — deep charcoal/navy
  /// surfaces, softened pastel accents so they don't glare on dark bg.
  static const dark = SereneCanvasColorScheme(
    background: Color(0xFF12141C), // deep charcoal-navy
    surfaceContainerLowest: Color(0xFF1A1D27), // raised card surface
    surfaceContainerLow: Color(0xFF20232E), // subtle secondary surface
    primary: Color(0xFFE7E9F2), // near-white ink (was midnight charcoal)
    onPrimary: Color(0xFF1A1E29), // dark text on light "primary" fills
    secondaryContainer: Color(0xFF313A5C), // deep periwinkle
    onSecondaryContainer: Color(0xFFDAE2F6),
    tertiaryPastel: Color(0xFF4A2E3A), // muted rose-lavender, dimmed
    onTertiaryPastel: Color(0xFFFDE4EB),
    accentMint: Color(0xFF203832), // deep muted mint
    onAccentMint: Color(0xFFE0F5EE),
    subduedText: Color(0xFF9AA5B8), // lighter for contrast on dark bg
    onSurfaceVariant: Color(0xFFC7C8D1),
    outlineVariant: Color(0xFF3A3D47),
    error: Color(0xFFFFB4AB), // Material dark-theme error convention
    aliveDot: Color(0xFF7E93D6), // slightly deepened periwinkle
  );

  @override
  SereneCanvasColorScheme copyWith({
    Color? background,
    Color? surfaceContainerLowest,
    Color? surfaceContainerLow,
    Color? primary,
    Color? onPrimary,
    Color? secondaryContainer,
    Color? onSecondaryContainer,
    Color? tertiaryPastel,
    Color? onTertiaryPastel,
    Color? accentMint,
    Color? onAccentMint,
    Color? subduedText,
    Color? onSurfaceVariant,
    Color? outlineVariant,
    Color? error,
    Color? aliveDot,
  }) {
    return SereneCanvasColorScheme(
      background: background ?? this.background,
      surfaceContainerLowest:
          surfaceContainerLowest ?? this.surfaceContainerLowest,
      surfaceContainerLow: surfaceContainerLow ?? this.surfaceContainerLow,
      primary: primary ?? this.primary,
      onPrimary: onPrimary ?? this.onPrimary,
      secondaryContainer: secondaryContainer ?? this.secondaryContainer,
      onSecondaryContainer: onSecondaryContainer ?? this.onSecondaryContainer,
      tertiaryPastel: tertiaryPastel ?? this.tertiaryPastel,
      onTertiaryPastel: onTertiaryPastel ?? this.onTertiaryPastel,
      accentMint: accentMint ?? this.accentMint,
      onAccentMint: onAccentMint ?? this.onAccentMint,
      subduedText: subduedText ?? this.subduedText,
      onSurfaceVariant: onSurfaceVariant ?? this.onSurfaceVariant,
      outlineVariant: outlineVariant ?? this.outlineVariant,
      error: error ?? this.error,
      aliveDot: aliveDot ?? this.aliveDot,
    );
  }

  @override
  SereneCanvasColorScheme lerp(
    ThemeExtension<SereneCanvasColorScheme>? other,
    double t,
  ) {
    if (other is! SereneCanvasColorScheme) return this;
    return SereneCanvasColorScheme(
      background: Color.lerp(background, other.background, t)!,
      surfaceContainerLowest:
          Color.lerp(surfaceContainerLowest, other.surfaceContainerLowest, t)!,
      surfaceContainerLow:
          Color.lerp(surfaceContainerLow, other.surfaceContainerLow, t)!,
      primary: Color.lerp(primary, other.primary, t)!,
      onPrimary: Color.lerp(onPrimary, other.onPrimary, t)!,
      secondaryContainer:
          Color.lerp(secondaryContainer, other.secondaryContainer, t)!,
      onSecondaryContainer:
          Color.lerp(onSecondaryContainer, other.onSecondaryContainer, t)!,
      tertiaryPastel: Color.lerp(tertiaryPastel, other.tertiaryPastel, t)!,
      onTertiaryPastel:
          Color.lerp(onTertiaryPastel, other.onTertiaryPastel, t)!,
      accentMint: Color.lerp(accentMint, other.accentMint, t)!,
      onAccentMint: Color.lerp(onAccentMint, other.onAccentMint, t)!,
      subduedText: Color.lerp(subduedText, other.subduedText, t)!,
      onSurfaceVariant:
          Color.lerp(onSurfaceVariant, other.onSurfaceVariant, t)!,
      outlineVariant: Color.lerp(outlineVariant, other.outlineVariant, t)!,
      error: Color.lerp(error, other.error, t)!,
      aliveDot: Color.lerp(aliveDot, other.aliveDot, t)!,
    );
  }
}

// ===========================================================================
// Elevation (theme-aware shadow sets)
// ===========================================================================

class SereneCanvasElevation {
  SereneCanvasElevation._();

  /// Light theme — identical to `SereneCanvasTokens.ambientShadow`.
  static const ambientLight = SereneCanvasTokens.ambientShadow;

  /// Light theme — identical to `SereneCanvasTokens.popShadow`.
  static const popLight = SereneCanvasTokens.popShadow;

  /// Dark theme — the white "sheen" highlight from the light shadow set
  /// looks wrong on dark surfaces, so it's dropped; blur/spread are kept
  /// but the shadow itself is a darker, slightly more opaque black.
  static const List<BoxShadow> ambientDark = [
    BoxShadow(
      color: Color(0x66000000), // rgba(0,0,0,0.40)
      offset: Offset(0, 10),
      blurRadius: 24,
      spreadRadius: -4,
    ),
  ];

  static const List<BoxShadow> popDark = [
    BoxShadow(
      color: Color(0x80000000), // rgba(0,0,0,0.50)
      offset: Offset(0, 16),
      blurRadius: 36,
      spreadRadius: -6,
    ),
  ];
}

// ===========================================================================
// ThemeData factory
// ===========================================================================

class SereneCanvasTheme {
  SereneCanvasTheme._();

  static ThemeData get light => _build(
        colors: SereneCanvasColorScheme.light,
        brightness: Brightness.light,
      );

  static ThemeData get dark => _build(
        colors: SereneCanvasColorScheme.dark,
        brightness: Brightness.dark,
      );

  static ThemeData _build({
    required SereneCanvasColorScheme colors,
    required Brightness brightness,
  }) {
    final base = ThemeData(brightness: brightness, useMaterial3: true);

    return base.copyWith(
      scaffoldBackgroundColor: colors.background,
      colorScheme: base.colorScheme.copyWith(
        brightness: brightness,
        surface: colors.surfaceContainerLowest,
        primary: colors.primary,
        onPrimary: colors.onPrimary,
        secondaryContainer: colors.secondaryContainer,
        onSecondaryContainer: colors.onSecondaryContainer,
        tertiaryContainer: colors.tertiaryPastel,
        onTertiaryContainer: colors.onTertiaryPastel,
        onSurfaceVariant: colors.onSurfaceVariant,
        outlineVariant: colors.outlineVariant,
        error: colors.error,
      ),
      textTheme: base.textTheme.copyWith(
        headlineMedium: GoogleFonts.plusJakartaSans(
          fontSize: 28,
          fontWeight: FontWeight.w700,
          height: 34 / 28,
          letterSpacing: -0.02 * 28,
          color: colors.primary,
        ),
        titleLarge: GoogleFonts.plusJakartaSans(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          height: 26 / 20,
          letterSpacing: -0.01 * 20,
          color: colors.primary,
        ),
        titleMedium: GoogleFonts.plusJakartaSans(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          height: 22 / 16,
          color: colors.primary,
        ),
        bodyMedium: GoogleFonts.inter(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          height: 20 / 14,
          letterSpacing: -0.01 * 14,
          color: colors.primary,
        ),
        bodySmall: GoogleFonts.inter(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          height: 16 / 12,
          color: colors.subduedText,
        ),
        labelLarge: GoogleFonts.inter(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          height: 18 / 14,
          letterSpacing: 0.01 * 14,
          color: colors.primary,
        ),
        labelMedium: GoogleFonts.inter(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          height: 16 / 12,
          letterSpacing: 0.02 * 12,
          color: colors.subduedText,
        ),
        labelSmall: GoogleFonts.inter(
          fontSize: 10,
          fontWeight: FontWeight.w600,
          height: 14 / 10,
          letterSpacing: 0.03 * 10,
          color: colors.subduedText,
        ),
      ),
      extensions: [
        colors,
        brightness == Brightness.dark
            ? const _SereneCanvasElevationExtension(
                ambient: SereneCanvasElevation.ambientDark,
                pop: SereneCanvasElevation.popDark,
              )
            : const _SereneCanvasElevationExtension(
                ambient: SereneCanvasElevation.ambientLight,
                pop: SereneCanvasElevation.popLight,
              ),
      ],
    );
  }
}

/// Lets widgets pull the correct shadow set via
/// `Theme.of(context).extension<_SereneCanvasElevationExtension>()`.
@immutable
class _SereneCanvasElevationExtension
    extends ThemeExtension<_SereneCanvasElevationExtension> {
  final List<BoxShadow> ambient;
  final List<BoxShadow> pop;

  const _SereneCanvasElevationExtension({
    required this.ambient,
    required this.pop,
  });

  @override
  _SereneCanvasElevationExtension copyWith({
    List<BoxShadow>? ambient,
    List<BoxShadow>? pop,
  }) {
    return _SereneCanvasElevationExtension(
      ambient: ambient ?? this.ambient,
      pop: pop ?? this.pop,
    );
  }

  @override
  _SereneCanvasElevationExtension lerp(
    ThemeExtension<_SereneCanvasElevationExtension>? other,
    double t,
  ) {
    // Shadows don't interpolate meaningfully; snap at the midpoint.
    if (other is! _SereneCanvasElevationExtension) return this;
    return t < 0.5 ? this : other;
  }
}

// ===========================================================================
// Example usage (not required — illustrative only)
// ===========================================================================
//
// MaterialApp(
//   theme: SereneCanvasTheme.light,
//   darkTheme: SereneCanvasTheme.dark,
//   themeMode: ThemeMode.system,
//   home: const HomeScreen(),
// );
//
// In a widget, to read theme-aware colors instead of the hardcoded
// SereneCanvasTokens statics:
//
//   final colors = Theme.of(context).extension<SereneCanvasColorScheme>()!;
//   Container(color: colors.background, ...);