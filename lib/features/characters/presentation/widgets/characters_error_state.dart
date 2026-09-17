// characters_error_state.dart
//
// Single responsibility: render an error message with a retry button.
// Doesn't know what failed or how to retry — both are passed in.

import 'package:flutter/material.dart';
import 'package:rick_and_morty/core/theme/serene_canvas_tokens.dart';

class CharactersErrorState extends StatelessWidget {
  const CharactersErrorState({
    super.key,
    required this.message,
    required this.onRetry,
  });

  final String message;
  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(SereneCanvasTokens.spaceLg),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(
              Icons.error_outline_rounded,
              size: 32,
              color: SereneCanvasTokens.error,
            ),
            const SizedBox(height: SereneCanvasTokens.spaceSm),
            Text(
              message,
              textAlign: TextAlign.center,
              style: SereneCanvasTokens.bodyMd(),
            ),
            const SizedBox(height: SereneCanvasTokens.spaceMd),
            ElevatedButton(
              onPressed: onRetry,
              style: ElevatedButton.styleFrom(
                backgroundColor: SereneCanvasTokens.primary,
                foregroundColor: SereneCanvasTokens.onPrimary,
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(SereneCanvasTokens.radiusFull),
                ),
              ),
              child: const Text('Retry'),
            ),
          ],
        ),
      ),
    );
  }
}