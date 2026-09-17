import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:rick_and_morty/features/characters/presentation/bloc/character_detail/character_detail_bloc.dart';
import 'package:rick_and_morty/features/characters/presentation/bloc/character_detail/character_detail_event.dart';
import 'package:rick_and_morty/features/characters/presentation/bloc/characters_bloc.dart';
import 'package:rick_and_morty/features/characters/presentation/pages/character_detail_page.dart';
import 'package:rick_and_morty/features/characters/presentation/pages/characters_page.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) {
        return BlocProvider(
          create: (_) => GetIt.instance<CharactersBloc>(),
          child: const CharactersPage(),
        );
      },
    ),
    GoRoute(
      path: '/character/:id',
      builder: (context, state) {
        final id = state.pathParameters['id']!;
        final fallbackImageUrl = state.extra as String? ?? '';

        return BlocProvider(
          // Cascade operator (..) fires the event the instant GetIt creates the BLoC
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
