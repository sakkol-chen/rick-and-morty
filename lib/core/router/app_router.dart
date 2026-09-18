import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:get_it/get_it.dart';
import 'package:rick_and_morty/core/theme/serene_canvas_tokens.dart';
import 'package:rick_and_morty/features/settings/presentation/pages/settings_page.dart';
import 'package:rick_and_morty/features/shell/presentation/widgets/floating_bottom_nav.dart';

// Import your pages and blocs
import '../../features/characters/presentation/bloc/characters_bloc.dart';
import '../../features/characters/presentation/pages/characters_page.dart';
import '../../features/bookmarks/presentation/bloc/bookmarks_bloc.dart';
import '../../features/bookmarks/presentation/pages/bookmarks_page.dart';
import '../../features/characters/presentation/bloc/character_detail/character_detail_bloc.dart';
import '../../features/characters/presentation/bloc/character_detail/character_detail_event.dart';
import '../../features/characters/presentation/pages/character_detail_page.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    // 1. THE SHELL ROUTE (Holds the Bottom Nav)
    ShellRoute(
      builder: (context, state, child) {
        return Scaffold(
          backgroundColor: SereneCanvasTokens.background,
          body: Stack(
            children: [
              // This child is either CharactersPage or BookmarksPage
              child,

              // The persistent floating nav bar!
              const Positioned(
                left: SereneCanvasTokens.margin,
                right: SereneCanvasTokens.margin,
                bottom: SereneCanvasTokens.spaceLg,
                child: FloatingBottomNav(),
              ),
            ],
          ),
        );
      },
      routes: [
        // TAB 1: Feed
        GoRoute(
          path: '/',
          builder: (context, state) => BlocProvider(
            create: (_) => GetIt.instance<CharactersBloc>(),
            child: const CharactersPage(),
          ),
        ),
        // TAB 3: Bookmarks
        GoRoute(
          path: '/bookmarks',
          builder: (context, state) => BlocProvider(
            create: (_) =>
                GetIt.instance<BookmarksBloc>()..add(LoadBookmarksEvent()),
            child: const BookmarksPage(),
          ),
        ),
        GoRoute(
          path: '/settings',
          builder: (context, state) => const SettingsPage(),
        ),
      ],
    ),

    // 2. THE DETAIL ROUTE (Outside the shell so it covers the nav bar)
    GoRoute(
      path: '/character/:id',
      builder: (context, state) {
        final id = state.pathParameters['id']!;
        final fallbackImageUrl = state.extra as String? ?? '';
        return BlocProvider(
          create: (_) =>
              GetIt.instance<CharacterDetailBloc>()
                ..add(FetchCharacterDetailEvent(id)),
          child: CharacterDetailPage(
            characterId: id,
            fallbackImageUrl: fallbackImageUrl,
          ),
        );
      },
    ),
  ],
);
