import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:rick_and_morty/core/theme/serene_canvas_tokens.dart';
import 'package:rick_and_morty/features/bookmarks/presentation/bloc/bookmarks_bloc.dart';
import 'package:rick_and_morty/features/shell/presentation/widgets/characters_app_bar.dart';

class BookmarksPage extends StatelessWidget {
  const BookmarksPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(child: CharactersAppBar()),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(
                SereneCanvasTokens.margin,
                SereneCanvasTokens.spaceLg,
                SereneCanvasTokens.margin,
                0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Your Collection',
                    style: SereneCanvasTokens.labelMd(
                      color: SereneCanvasTokens.subduedText,
                    ),
                  ),
                  const SizedBox(height: SereneCanvasTokens.spaceSm),
                  Text(
                    'Saved Travelers',
                    style: SereneCanvasTokens.headlineDisplayMobile(),
                  ),
                  const SizedBox(height: SereneCanvasTokens.spaceSm),
                ],
              ),
            ),
          ),

          BlocBuilder<BookmarksBloc, BookmarksState>(
            builder: (context, state) {
              if (state is BookmarksLoaded) {
                return SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      // 1. Bulletproof safety check: if Flutter asks for an index out of bounds, stop.
                      if (index >= state.characters.length) return null;

                      final character = state.characters[index];
                      return _buildDismissibleTile(context, character);
                    },
                    // 2. CRITICAL: Explicitly cap the list at the exact number of loaded characters
                    childCount: state.characters.length,
                  ),
                );
              }
              return SliverFillRemaining(
                hasScrollBody: false,
                child: _buildEmptyState(),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildDismissibleTile(BuildContext context, dynamic character) {
    return Dismissible(
      key: Key('bookmark-${character.id}'),
      direction: DismissDirection.endToStart,
      onDismissed: (direction) {
        // 1. Remove it
        context.read<BookmarksBloc>().add(RemoveBookmarkEvent(character.id));

        // 2. Show the Undo SnackBar
        ScaffoldMessenger.of(context).clearSnackBars();
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('${character.name} removed'),
            behavior: SnackBarBehavior.floating,
            backgroundColor: SereneCanvasTokens.surfaceContainerLow,
            action: SnackBarAction(
              label: 'UNDO',
              textColor: SereneCanvasTokens.primary,
              onPressed: () {
                // Re-triggering ToggleFavoriteEvent essentially adds it back!
                context.read<BookmarksBloc>().add(
                  RemoveBookmarkEvent(character.id),
                );
              },
            ),
          ),
        );
      },
      background: Container(
        color: SereneCanvasTokens.error,
        alignment: Alignment.centerRight,
        padding: const EdgeInsets.only(right: SereneCanvasTokens.margin),
        child: const Icon(
          Icons.delete_outline,
          color: SereneCanvasTokens.onPrimary,
        ),
      ),
      child: ListTile(
        onTap: () => context.push(
          '/character/${character.id}',
          extra: character.imageUrl,
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: SereneCanvasTokens.margin,
          vertical: SereneCanvasTokens.spaceSm,
        ),
        leading: Hero(
          tag: 'character-avatar-${character.id}',
          child: CircleAvatar(
            backgroundImage: NetworkImage(character.imageUrl),
            radius: 28,
          ),
        ),
        title: Text(character.name, style: SereneCanvasTokens.labelLg()),
        subtitle: Text(character.status, style: SereneCanvasTokens.bodySm()),
      ),
    );
  }

  Widget _buildEmptyState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.bookmark_border_rounded,
            size: 80,
            color: SereneCanvasTokens.surfaceContainerLow,
          ),
          const SizedBox(height: SereneCanvasTokens.spaceLg),
          Text(
            'No travelers saved yet.',
            style: SereneCanvasTokens.headlineSm(),
          ),
          const SizedBox(height: SereneCanvasTokens.spaceSm),
          Text(
            'Tap the heart icon on the feed\nto bookmark characters for offline access.',
            textAlign: TextAlign.center,
            style: SereneCanvasTokens.bodyMd(
              color: SereneCanvasTokens.subduedText,
            ),
          ),
        ],
      ),
    );
  }
}
