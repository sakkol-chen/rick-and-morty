part of 'characters_bloc.dart';

// RECONSTRUCTED from how characters_bloc.dart uses these states — merge the
// NEW/CHANGED bits below into your real characters_state.dart if one
// already exists; don't overwrite it wholesale. The only actual change
// needed on top of your existing CharactersLoaded is the `favoriteIds`
// field (+ its entry in copyWith).

abstract class CharactersState {
  const CharactersState();
}

class CharactersInitial extends CharactersState {
  const CharactersInitial();
}

class CharactersLoading extends CharactersState {
  const CharactersLoading();
}

class CharactersError extends CharactersState {
  const CharactersError(this.message);
  final String message;
}

class CharactersLoaded extends CharactersState {
  const CharactersLoaded({
    required this.characters,
    required this.currentPage,
    required this.hasReachedMax,
    this.currentQuery,
    this.currentStatus,
    this.currentGender,
    this.isPaginating = false,
    this.favoriteIds = const <Object>{}, // ─── NEW ───
  });

  final List<CharacterEntity> characters;
  final int currentPage;
  final bool hasReachedMax;
  final String? currentQuery;
  final String? currentStatus;
  final String? currentGender;
  final bool isPaginating;

  /// ─── NEW ───
  /// `CharacterEntity.id` values the user has favorited. Lives in bloc
  /// state (rather than as local page state) so the whole screen is
  /// driven by BlocBuilder with no separate `setState()`-managed field to
  /// keep in sync.
  final Set<Object> favoriteIds;

  CharactersLoaded copyWith({
    List<CharacterEntity>? characters,
    int? currentPage,
    bool? hasReachedMax,
    String? currentQuery,
    String? currentStatus,
    String? currentGender,
    bool? isPaginating,
    Set<Object>? favoriteIds, // ─── NEW ───
  }) {
    return CharactersLoaded(
      characters: characters ?? this.characters,
      currentPage: currentPage ?? this.currentPage,
      hasReachedMax: hasReachedMax ?? this.hasReachedMax,
      currentQuery: currentQuery ?? this.currentQuery,
      currentStatus: currentStatus ?? this.currentStatus,
      currentGender: currentGender ?? this.currentGender,
      isPaginating: isPaginating ?? this.isPaginating,
      favoriteIds: favoriteIds ?? this.favoriteIds, // ─── NEW ───
    );
  }
}
