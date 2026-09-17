// characters_filter_row.dart
//
// Single responsibility: render the All / Alive / Dead / Unknown pills and
// report which one was tapped. Holds no state of its own — the currently
// selected filter is passed in, and the page/bloc decide what happens next.

import 'package:flutter/material.dart';

import 'package:rick_and_morty/core/theme/serene_canvas_tokens.dart';
import 'status_filter.dart';

class CharactersFilterRow extends StatelessWidget {
  const CharactersFilterRow({
    super.key,
    required this.selected,
    required this.onSelected,
  });

  final StatusFilter selected;
  final ValueChanged<StatusFilter> onSelected;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: StatusFilter.values.map((filter) {
        final isSelected = filter == selected;
        return Padding(
          padding: const EdgeInsets.only(right: SereneCanvasTokens.spaceSm),
          child: InkWell(
            onTap: () => onSelected(filter),
            borderRadius: BorderRadius.circular(SereneCanvasTokens.radiusFull),
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 10,
              ),
              decoration: BoxDecoration(
                color: isSelected
                    ? SereneCanvasTokens.surfaceContainerLowest
                    : Colors.transparent,
                borderRadius:
                    BorderRadius.circular(SereneCanvasTokens.radiusFull),
                boxShadow: isSelected ? SereneCanvasTokens.ambientShadow : null,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (filter.dotColor != null) ...[
                    Container(
                      width: 8,
                      height: 8,
                      decoration: BoxDecoration(
                        color: filter.dotColor,
                        shape: BoxShape.circle,
                      ),
                    ),
                    const SizedBox(width: SereneCanvasTokens.spaceXs + 2),
                  ],
                  Text(
                    filter.label,
                    style: SereneCanvasTokens.labelLg(
                      color: isSelected
                          ? SereneCanvasTokens.primary
                          : SereneCanvasTokens.onSurfaceVariant,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}