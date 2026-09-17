// floating_bottom_nav.dart
//
// Single responsibility: render the floating pill bottom navigation bar.
// Owns only its own "which icon is active" visual state; if this should
// drive real navigation, lift `onTap`/`selectedIndex` up to the caller
// instead of keeping `_index` internal.

import 'package:flutter/material.dart';

import 'package:rick_and_morty/core/theme/serene_canvas_tokens.dart';

class FloatingBottomNav extends StatefulWidget {
  const FloatingBottomNav({super.key, this.onTap});

  final ValueChanged<int>? onTap;

  @override
  State<FloatingBottomNav> createState() => _FloatingBottomNavState();
}

class _FloatingBottomNavState extends State<FloatingBottomNav> {
  int _index = 0;

  static const _icons = [
    Icons.public_rounded,
    Icons.play_arrow_rounded,
    Icons.bookmark_border_rounded,
    Icons.tune_rounded,
  ];

  void _select(int i) {
    setState(() => _index = i);
    widget.onTap?.call(i);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        color: SereneCanvasTokens.surfaceContainerLowest,
        borderRadius: BorderRadius.circular(SereneCanvasTokens.radiusFull),
        boxShadow: SereneCanvasTokens.popShadow,
        border: Border.all(color: Colors.white.withOpacity(0.8), width: 1),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(_icons.length, (i) {
          final isActive = i == _index;
          return InkWell(
            onTap: () => _select(i),
            borderRadius: BorderRadius.circular(SereneCanvasTokens.radiusFull),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  _icons[i],
                  size: 22,
                  color: isActive
                      ? SereneCanvasTokens.primary
                      : SereneCanvasTokens.subduedText,
                ),
                const SizedBox(height: 4),
                Container(
                  width: 4,
                  height: 4,
                  decoration: BoxDecoration(
                    color: isActive
                        ? SereneCanvasTokens.primary
                        : Colors.transparent,
                    shape: BoxShape.circle,
                  ),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
