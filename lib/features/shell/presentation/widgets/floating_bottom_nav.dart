import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rick_and_morty/core/theme/serene_canvas_tokens.dart';

class FloatingBottomNav extends StatelessWidget {
  const FloatingBottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    final String location = GoRouterState.of(context).uri.path;
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
        children: [
          IconButton(
            icon: const Icon(Icons.explore_rounded),
            // Highlight if we are on the root path
            color: location == '/'
                ? SereneCanvasTokens.primary
                : SereneCanvasTokens.subduedText,
            onPressed: () => context.go('/'), // Navigate to Feed
          ),
          IconButton(
            icon: const Icon(Icons.bookmark_rounded),
            // Highlight if we are on the bookmarks path
            color: location == '/bookmarks'
                ? SereneCanvasTokens.primary
                : SereneCanvasTokens.subduedText,
            onPressed: () => context.go('/bookmarks'), // Navigate to Bookmarks
          ),
          IconButton(
            icon: const Icon(Icons.settings_rounded),
            color: location == '/bookmarks'
                ? SereneCanvasTokens.primary
                : SereneCanvasTokens.subduedText,
            onPressed: () => context.go('/settings'),
          ),
        ],
      ),
    );
  }
}
