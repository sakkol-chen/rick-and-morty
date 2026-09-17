// featured_dimension_card.dart
//
// Single responsibility: render the "Featured Dimension" card.
//
// Slimmed down from the original hero treatment now that the search bar
// takes the prime real estate above the character grid — this is a
// secondary discovery hook, not the page's main focus, so it's a single
// compact row rather than a tall banner with a large graphic.
//
// NOTE: this content isn't part of CharactersState — it's static, matching
// the screenshot. If/when you have a real data source for it, turn the
// hardcoded strings into constructor parameters (title, subtitle,
// imageUrl, onInspectTap) rather than adding bloc access here — keep this
// widget presentation-only.

import 'package:flutter/material.dart';

import 'package:rick_and_morty/core/theme/serene_canvas_tokens.dart';

class FeaturedDimensionCard extends StatelessWidget {
  const FeaturedDimensionCard({
    super.key,
    this.title = 'Earth C-137 Explorer',
    this.inhabitantsLabel = '28 recorded inhabitants',
    this.onInspectTap,
  });

  final String title;
  final String inhabitantsLabel;
  final VoidCallback? onInspectTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: SereneCanvasTokens.spaceMd,
        vertical: SereneCanvasTokens.spaceMd,
      ),
      decoration: BoxDecoration(
        color: SereneCanvasTokens.secondaryContainer,
        borderRadius: BorderRadius.circular(SereneCanvasTokens.radiusMd),
      ),
      child: Row(
        children: [
          Container(
            width: 44,
            height: 44,
            decoration: const BoxDecoration(
              color: SereneCanvasTokens.surfaceContainerLowest,
              shape: BoxShape.circle,
            ),
            padding: const EdgeInsets.all(10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(SereneCanvasTokens.radiusSm),
              child: Container(color: SereneCanvasTokens.surfaceContainerLow),
            ),
          ),
          const SizedBox(width: SereneCanvasTokens.spaceMd),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.explore_outlined,
                      size: 12,
                      color: SereneCanvasTokens.onSurfaceVariant,
                    ),
                    const SizedBox(width: 4),
                    Text(
                      'FEATURED DIMENSION',
                      style: SereneCanvasTokens.labelSm(
                        color: SereneCanvasTokens.onSurfaceVariant,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 2),
                Text(
                  title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: SereneCanvasTokens.headlineSm(),
                ),
                Text(
                  inhabitantsLabel,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: SereneCanvasTokens.bodySm(
                    color: SereneCanvasTokens.onSurfaceVariant,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: SereneCanvasTokens.spaceSm),
          InkWell(
            onTap: onInspectTap ?? () {},
            borderRadius: BorderRadius.circular(SereneCanvasTokens.radiusFull),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
              decoration: BoxDecoration(
                color: SereneCanvasTokens.tertiaryPastel,
                borderRadius: BorderRadius.circular(
                  SereneCanvasTokens.radiusFull,
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(
                    Icons.play_arrow_rounded,
                    size: 14,
                    color: SereneCanvasTokens.primary,
                  ),
                  const SizedBox(width: 4),
                  Text(
                    'Inspect',
                    style: SereneCanvasTokens.labelMd(
                      color: SereneCanvasTokens.primary,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
