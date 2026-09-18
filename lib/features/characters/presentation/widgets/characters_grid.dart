import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rick_and_morty/core/theme/serene_canvas_tokens.dart';
import 'package:rick_and_morty/features/characters/domain/entities/characters_entity.dart';
import 'package:rick_and_morty/features/characters/presentation/widgets/characters_card.dart';

class CharactersGrid extends StatelessWidget {
  const CharactersGrid({
    super.key,
    required this.characters,
    required this.favoriteIds,
    required this.onFavoriteTap,
    this.isPaginating = false,
  });

  final List<CharacterEntity> characters;
  final Set<Object> favoriteIds;
  final ValueChanged<Object> onFavoriteTap;
  final bool isPaginating;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: characters.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: SereneCanvasTokens.spaceMd,
            crossAxisSpacing: SereneCanvasTokens.spaceMd,
            childAspectRatio: 0.72,
          ),
          itemBuilder: (context, index) {
            final character = characters[index];

            return InkWell(
              onTap: () {
                context.push(
                  '/character/${character.id}',
                  extra: character.imageUrl,
                );
              },
              child: CharactersCard(
                character: character,
                isFavorite: favoriteIds.contains(character.id),
                onFavoriteTap: () => onFavoriteTap(character.id),
              ),
            );
          },
        ),
        if (isPaginating)
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Center(
              child: SizedBox(
                width: 22,
                height: 22,
                child: CircularProgressIndicator(
                  strokeWidth: 2.2,
                  color: SereneCanvasTokens.primary,
                ),
              ),
            ),
          ),
      ],
    );
  }
}
