import 'package:flutter/material.dart';
import 'package:rick_and_morty/core/theme/serene_canvas_tokens.dart';
import 'package:rick_and_morty/features/characters/presentation/widgets/circle_icon_button.dart';

class CharactersAppBar extends StatelessWidget {
  const CharactersAppBar({super.key, this.onProfileTap});

  final VoidCallback? onProfileTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        SereneCanvasTokens.margin,
        SereneCanvasTokens.spaceMd,
        SereneCanvasTokens.margin,
        0,
      ),
      child: Row(
        children: [
          Container(
            width: 44,
            height: 44,
            decoration: BoxDecoration(
              color: SereneCanvasTokens.secondaryContainer,
              borderRadius: BorderRadius.circular(SereneCanvasTokens.radiusMd),
            ),
            child: const Icon(
              Icons.grid_view_rounded,
              size: 18,
              color: SereneCanvasTokens.primary,
            ),
          ),
          const SizedBox(width: SereneCanvasTokens.spaceMd),
          Expanded(
            child: Text('Characters', style: SereneCanvasTokens.headlineMd()),
          ),
          CircleIconButton(
            icon: Icons.person_outline_rounded,
            background: SereneCanvasTokens.primary,
            iconColor: SereneCanvasTokens.onPrimary,
            onTap: onProfileTap ?? () {},
          ),
        ],
      ),
    );
  }
}
