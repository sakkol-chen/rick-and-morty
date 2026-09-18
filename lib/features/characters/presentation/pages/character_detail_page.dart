import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:rick_and_morty/core/theme/serene_canvas_tokens.dart';
import 'package:rick_and_morty/features/characters/presentation/bloc/character_detail/character_detail_bloc.dart';
import 'package:rick_and_morty/features/characters/presentation/bloc/character_detail/character_detail_state.dart';

class CharacterDetailPage extends StatelessWidget {
  final String characterId;
  final String fallbackImageUrl;

  const CharacterDetailPage({
    super.key,
    required this.characterId,
    required this.fallbackImageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SereneCanvasTokens.background,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 400,
            pinned: true,
            leading: IconButton(
              onPressed: () => context.pop(),
              icon: const Icon(
                Icons.arrow_back,
                color: SereneCanvasTokens.onPrimary,
              ),
              style: IconButton.styleFrom(backgroundColor: Colors.black38),
            ),
            flexibleSpace: FlexibleSpaceBar(
              background: Hero(
                tag: 'character-avatar-$characterId',
                child: fallbackImageUrl.isNotEmpty
                    ? Image.network(fallbackImageUrl, fit: BoxFit.cover)
                    : Container(color: SereneCanvasTokens.surfaceContainerLow),
              ),
            ),
          ),

          SliverToBoxAdapter(
            child: BlocBuilder<CharacterDetailBloc, CharacterDetailState>(
              builder: (context, state) {
                if (state is CharacterDetailLoading) {
                  return const Padding(
                    padding: EdgeInsets.all(40),
                    child: Center(
                      child: CircularProgressIndicator(
                        color: SereneCanvasTokens.primary,
                        strokeWidth: 2.2,
                      ),
                    ),
                  );
                }

                if (state is CharacterDetailLoaded) {
                  final character = state.character;

                  return Padding(
                    padding: EdgeInsets.all(SereneCanvasTokens.margin),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          character.name,
                          style: SereneCanvasTokens.headlineDisplayMobile(),
                        ),
                        const SizedBox(height: SereneCanvasTokens.spaceMd),
                        _buildInfoCard(
                          'Origin',
                          character.originName,
                          character.originDimension,
                        ),
                        const SizedBox(height: SereneCanvasTokens.spaceMd),
                        _buildInfoCard(
                          'Location',
                          character.locationName,
                          character.locationDimension,
                        ),
                        const SizedBox(height: SereneCanvasTokens.spaceLg),
                        Text(
                          'Episode (${character.episodes.length})',
                          style: SereneCanvasTokens.headlineMd(),
                        ),
                        const SizedBox(height: SereneCanvasTokens.spaceMd),
                        ...character.episodes.map(
                          (ep) => ListTile(
                            title: Text(
                              ep.name,
                              style: SereneCanvasTokens.labelLg(),
                            ),
                            subtitle: Text(
                              ep.airDate,
                              style: SereneCanvasTokens.bodySm(),
                            ),
                            trailing: Text(
                              ep.episodeCode,
                              style: SereneCanvasTokens.labelMd(),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                }
                return const SizedBox.shrink();
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInfoCard(String title, String name, String dimension) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(SereneCanvasTokens.spaceMd),
      decoration: BoxDecoration(
        color: SereneCanvasTokens.surfaceContainerLowest,
        borderRadius: BorderRadius.circular(SereneCanvasTokens.radiusMd),
        boxShadow: SereneCanvasTokens.ambientShadow,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: SereneCanvasTokens.labelSm()),
          const SizedBox(height: 4),
          Text(name, style: SereneCanvasTokens.headlineSm()),
          const SizedBox(height: 2),
          Text(dimension, style: SereneCanvasTokens.bodyMd()),
        ],
      ),
    );
  }
}
