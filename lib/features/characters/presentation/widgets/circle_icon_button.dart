// circle_icon_button.dart
//
// Single responsibility: a small, reusable tappable circular icon button
// (used by the top bar for search/profile, and by other cards for
// secondary actions). Purely presentational — takes callbacks, owns no
// state or business logic.

import 'package:flutter/material.dart';
import 'package:rick_and_morty/core/theme/serene_canvas_tokens.dart';


class CircleIconButton extends StatelessWidget {
  const CircleIconButton({
    super.key,
    required this.icon,
    required this.background,
    required this.iconColor,
    required this.onTap,
    this.bordered = false,
    this.size = 44,
    this.iconSize = 20,
  });

  final IconData icon;
  final Color background;
  final Color iconColor;
  final bool bordered;
  final double size;
  final double iconSize;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(SereneCanvasTokens.radiusFull),
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          color: background,
          shape: BoxShape.circle,
          border: bordered
              ? Border.all(color: SereneCanvasTokens.outlineVariant, width: 1)
              : null,
        ),
        child: Icon(icon, size: iconSize, color: iconColor),
      ),
    );
  }
}