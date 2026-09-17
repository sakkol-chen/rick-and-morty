part of 'characters_bloc.dart';

// RECONSTRUCTED from how characters_bloc.dart uses these events — merge the
// NEW section below into your real characters_event.dart if one already
// exists in your project; don't overwrite it wholesale.

abstract class CharactersEvent {
  const CharactersEvent();
}

class FetchCharactersEvent extends CharactersEvent {
  const FetchCharactersEvent();
}

class FetchNextPageEvent extends CharactersEvent {
  const FetchNextPageEvent();
}

class RefreshCharactersEvent extends CharactersEvent {
  const RefreshCharactersEvent();
}

class FilterCharactersEvent extends CharactersEvent {
  const FilterCharactersEvent({this.status, this.gender});
  final String? status;
  final String? gender;
}

class SearchCharactersEvent extends CharactersEvent {
  const SearchCharactersEvent({required this.query});
  final String query;
}

// ─────────────────────────── NEW ───────────────────────────
/// Toggles whether [id] (a `CharacterEntity.id`) is in the current
/// `CharactersLoaded.favoriteIds` set. Added so favoriting lives in the
/// bloc instead of as local page state — the page just dispatches this
/// and rebuilds via BlocBuilder.
class ToggleFavoriteEvent extends CharactersEvent {
  const ToggleFavoriteEvent({required this.id});
  final Object id;
}