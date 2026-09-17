import 'package:flutter/material.dart';
import 'package:rick_and_morty/core/theme/serene_canvas_tokens.dart';
import 'package:rick_and_morty/features/characters/domain/entities/characters_entity.dart';
import 'package:rick_and_morty/features/characters/presentation/widgets/status_filter.dart';

class CharactersCard extends StatelessWidget {
  const CharactersCard({
    super.key,
    required this.character,
    required this.isFavorite,
    required this.onFavoriteTap,
  });

  final CharacterEntity character;
  final bool isFavorite;
  final VoidCallback onFavoriteTap;

  @override
  Widget build(BuildContext context) {
    final statusColor = StatusFilterX.dotColorForStatus(character.status);

    return Container(
      decoration: BoxDecoration(
        color: SereneCanvasTokens.surfaceContainerLowest,
        borderRadius: BorderRadius.circular(SereneCanvasTokens.radiusMd),
        boxShadow: SereneCanvasTokens.ambientShadow,
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: _CardImage(
              character: character,
              isFavorite: isFavorite,
              onFavoriteTap: onFavoriteTap,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(SereneCanvasTokens.spaceMd),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  character.name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: SereneCanvasTokens.labelLg().copyWith(fontSize: 15),
                ),
                const SizedBox(height: SereneCanvasTokens.spaceXs),
                Row(
                  children: [
                    Container(
                      width: 6,
                      height: 6,
                      decoration: BoxDecoration(
                        color: statusColor,
                        shape: BoxShape.circle,
                      ),
                    ),
                    const SizedBox(width: 6),
                    Expanded(
                      child: Text(
                        '${character.status} • ${character.species}',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: SereneCanvasTokens.bodySm(),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: SereneCanvasTokens.spaceXs),
                Row(
                  children: [
                    const Icon(
                      Icons.public_rounded,
                      size: 12,
                      color: SereneCanvasTokens.subduedText,
                    ),
                    const SizedBox(width: 4),
                    Expanded(
                      child: Text(
                        character.locationName,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: SereneCanvasTokens.bodySm(),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _CardImage extends StatelessWidget {
  const _CardImage({
    required this.character,
    required this.isFavorite,
    required this.onFavoriteTap,
  });

  final CharacterEntity character;
  final bool isFavorite;
  final VoidCallback onFavoriteTap;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: character.imageUrl.isNotEmpty
              ? Image.network(
                  character.imageUrl,
                  fit: BoxFit.cover,
                  errorBuilder: (_, __, ___) =>
                      Container(color: SereneCanvasTokens.surfaceContainerLow),
                )
              : Container(color: SereneCanvasTokens.surfaceContainerLow),
        ),

        Positioned(
          top: 8,
          right: 8,
          child: InkWell(
            onTap: onFavoriteTap,
            borderRadius: BorderRadius.circular(SereneCanvasTokens.radiusFull),
            child: Container(
              width: 32,
              height: 32,
              decoration: const BoxDecoration(
                color: SereneCanvasTokens.surfaceContainerLowest,
                shape: BoxShape.circle,
              ),
              child: Icon(
                isFavorite
                    ? Icons.favorite_rounded
                    : Icons.favorite_border_rounded,
                size: 16,
                color: isFavorite
                    ? SereneCanvasTokens.error
                    : SereneCanvasTokens.primary,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
