

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:rick_and_morty/core/theme/serene_canvas_tokens.dart';
import 'package:rick_and_morty/features/characters/presentation/bloc/characters_bloc.dart';
import 'package:rick_and_morty/features/characters/presentation/widgets/character_search_bar.dart';
import 'package:rick_and_morty/features/characters/presentation/widgets/characters_app_bar.dart';
import 'package:rick_and_morty/features/characters/presentation/widgets/characters_error_state.dart';
import 'package:rick_and_morty/features/characters/presentation/widgets/characters_filter_row.dart';
import 'package:rick_and_morty/features/characters/presentation/widgets/characters_grid.dart';
import 'package:rick_and_morty/features/characters/presentation/widgets/feature_dimension_card.dart';
import 'package:rick_and_morty/features/characters/presentation/widgets/status_filter.dart';
import 'package:rick_and_morty/features/shell/presentation/widgets/floating_bottom_nav.dart';

class CharactersPage extends HookWidget {
  const CharactersPage({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<CharactersBloc>();
    final scrollController = useScrollController();
    final searchController = useTextEditingController();

    // Run one on first build; the return callback is the diposal
    // listener-teardown login hooks normally get from state.dipose.

    useEffect(() {
      bloc.add(FetchCharactersEvent());
      void onScroll() {
        if (!scrollController.hasClients) return;
        final threshold = scrollController.position.maxScrollExtent - 240;
        if (scrollController.position.pixels >= threshold) {
          bloc.add(FetchNextPageEvent());
        }
      }

      scrollController.addListener(onScroll);
      return () => scrollController.removeListener(onScroll);
    }, const []);

    void onFilterTap(StatusFilter filter) {
      bloc.add(FilterCharactersEvent(status: filter.apiValue, gender: null));
    }

    void onSearchChange(String query) {
      if (query.isEmpty) {
        bloc.add(FetchCharactersEvent());
      } else {
        bloc.add(SearchCharactersEvent(query: query));
      }
    }

    void onSearchCleared() => bloc.add(FetchCharactersEvent());
    void onFavoriteTap(Object id) => bloc.add(ToggleFavoriteEvent(id: id));
    Future<void> onRefresh() async => bloc.add(RefreshCharactersEvent());

    return Scaffold(
      backgroundColor: SereneCanvasTokens.background,
      body: Stack(
        children: [
          SafeArea(
            child: RefreshIndicator(
              color: SereneCanvasTokens.primary,
              onRefresh: onRefresh,
              child: CustomScrollView(
                controller: ScrollController(),
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
                            'MULTIVERSE EXPLORER',
                            style: SereneCanvasTokens.labelMd(
                              color: SereneCanvasTokens.subduedText,
                            ),
                          ),
                          const SizedBox(height: SereneCanvasTokens.spaceSm),
                          Text(
                            'Find Your Traveler',
                            style: SereneCanvasTokens.headlineDisplayMobile(),
                          ),
                          const SizedBox(height: SereneCanvasTokens.spaceLg),
                          CharactersSearchBar(
                            controller: searchController,
                            onChanged: onSearchChange,
                            onClear: onSearchCleared,
                          ),
                          const SizedBox(height: SereneCanvasTokens.spaceMd),
                          // Selected pill is derived from bloc state
                          // (currentStatus), not a local field — so it
                          // can never drift out of sync with what was
                          // actually requested from the API.
                          BlocBuilder<CharactersBloc, CharactersState>(
                            buildWhen: (previous, current) =>
                                _statusOf(previous) != _statusOf(current),
                            builder: (context, state) {
                              return CharactersFilterRow(
                                selected: StatusFilterX.fromApiValue(
                                  _statusOf(state),
                                ),
                                onSelected: onFilterTap,
                              );
                            },
                          ),
                          const SizedBox(height: SereneCanvasTokens.spaceLg),
                          const FeaturedDimensionCard(),
                          const SizedBox(height: SereneCanvasTokens.spaceXl),
                        ],
                      ),
                    ),
                  ),
                  BlocBuilder<CharactersBloc, CharactersState>(
                    builder: (context, state) =>
                        _buildBody(context, state, onFavoriteTap),
                  ),
                ],
              ),
            ),
          ),
          const Positioned(
            left: SereneCanvasTokens.margin,
            right: SereneCanvasTokens.margin,
            bottom: SereneCanvasTokens.spaceLg,
            child: FloatingBottomNav(),
          ),
        ],
      ),
    );
  }

  static String? _statusOf(CharactersState state) =>
      state is CharactersLoaded ? state.currentStatus : null;

  Widget _buildBody(
    BuildContext context,
    CharactersState state,
    ValueChanged<Object> onFavoriteTap,
  ) {
    if (state is CharactersLoading) {
      return const SliverFillRemaining(
        hasScrollBody: false,
        child: Center(
          child: CircularProgressIndicator(color: SereneCanvasTokens.primary),
        ),
      );
    }

    if (state is CharactersError) {
      return SliverFillRemaining(
        hasScrollBody: false,
        child: CharactersErrorState(
          message: state.message,
          onRetry: () =>
              context.read<CharactersBloc>().add(FetchCharactersEvent()),
        ),
      );
    }

    if (state is CharactersLoaded) {
      return SliverToBoxAdapter(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(
            SereneCanvasTokens.margin,
            0,
            SereneCanvasTokens.margin,
            0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Dimensional Nomads',
                    style: SereneCanvasTokens.headlineSm(),
                  ),
                  Text(
                    '${state.characters.length} Travelers',
                    style: SereneCanvasTokens.bodySm(),
                  ),
                ],
              ),
              const SizedBox(height: SereneCanvasTokens.spaceLg),
              CharactersGrid(
                characters: state.characters,
                favoriteIds: state.favoriteIds,
                onFavoriteTap: onFavoriteTap,
                isPaginating: state.isPaginating,
              ),
              const SizedBox(height: 120),
            ],
          ),
        ),
      );
    }
    return const SliverFillRemaining(
      hasScrollBody: false,
      child: SizedBox.shrink(),
    );
  }
}
