import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:rick_and_morty/core/error/failures.dart';
import 'package:rick_and_morty/features/characters/data/datasources/favorites_local_datasource.dart';
import 'package:rick_and_morty/features/characters/domain/usecases/get_characters_use_case.dart';
import 'package:rick_and_morty/features/characters/domain/usecases/toggle_favorite_use_case.dart';
import 'package:rxdart/rxdart.dart';
import '../../../../core/common/result.dart';
import '../../domain/entities/characters_entity.dart'; // Ensure matches your file name

part 'characters_event.dart';
part 'characters_state.dart';

// Our custom 300ms debouncer transformer
EventTransformer<Event> debounce<Event>(Duration duration) {
  return (events, mapper) => events.debounceTime(duration).flatMap(mapper);
}

@injectable
class CharactersBloc extends Bloc<CharactersEvent, CharactersState> {
  final GetCharactersUseCase _getCharactersUseCase;
  final FavoritesLocalDataSource _localDataSource;
  final ToggleFavoriteUseCase _toggleFavoriteUsecase;

  CharactersBloc(
    this._getCharactersUseCase,
    this._localDataSource,
    this._toggleFavoriteUsecase,
  ) : super(CharactersInitial()) {
    on<FetchCharactersEvent>(_onFetchCharacters);
    on<FetchNextPageEvent>(_onFetchNextPage);
    on<RefreshCharactersEvent>(_onRefreshCharacters);
    on<FilterCharactersEvent>(_onFilterCharacters);
    on<ToggleFavoriteEvent>(_onToggleFavorite); // ─── NEW ───

    // We apply the debouncer strictly to the search event!
    on<SearchCharactersEvent>(
      _onSearchCharacters,
      transformer: debounce(const Duration(milliseconds: 300)),
    );
  }

  /// ─── NEW ───
  /// Favorites are UI-level state that should survive fetch/search/filter
  /// operations, which otherwise emit a brand-new CharactersLoaded. Reading
  /// the current state's favoriteIds (if any) before those operations run
  /// means a search or filter change never silently un-favorites anything.
  Set<String> get _currentFavoriteIds {
    final current = state;
    return current is CharactersLoaded ? current.favoriteIds : const <String>{};
  }

  Future<void> _onFetchCharacters(
    FetchCharactersEvent event,
    Emitter<CharactersState> emit,
  ) async {
    final favoriteIds = _currentFavoriteIds;
    emit(CharactersLoading());
    final result = await _getCharactersUseCase.execute(page: 1);

    _handleResult(result, emit, 1, null, null, null, favoriteIds);
  }

  Future<void> _onFetchNextPage(
    FetchNextPageEvent event,
    Emitter<CharactersState> emit,
  ) async {
    if (state is! CharactersLoaded) return;
    final currentState = state as CharactersLoaded;
    if (currentState.hasReachedMax || currentState.isPaginating) return;

    // Emit pagination state while keeping current characters visible
    emit(currentState.copyWith(isPaginating: true));

    final nextPage = currentState.currentPage + 1;
    final Result<List<CharacterEntity>, Failures> result =
        await _getCharactersUseCase.execute(
          page: nextPage,
          name: currentState.currentQuery,
          status: currentState.currentStatus,
          gender: currentState.currentGender,
        );
    switch (result) {
      case Success():
        emit(
          currentState.copyWith(
            characters: List.of(currentState.characters)..addAll(result.value),
            currentPage: nextPage,
            isPaginating: false,
            hasReachedMax: result.value.isEmpty,
          ),
        );
        break;
      case Error():
        // On pagination error, we just stop paginating and keep current data
        emit(currentState.copyWith(isPaginating: false, hasReachedMax: true));
        break;
    }
  }

  Future<void> _onSearchCharacters(
    SearchCharactersEvent event,
    Emitter<CharactersState> emit,
  ) async {
    final favoriteIds = _currentFavoriteIds;
    emit(CharactersLoading());
    final result = await _getCharactersUseCase.execute(
      page: 1,
      name: event.query,
    );
    _handleResult(result, emit, 1, event.query, null, null, favoriteIds);
  }

  Future<void> _onFilterCharacters(
    FilterCharactersEvent event,
    Emitter<CharactersState> emit,
  ) async {
    final favoriteIds = _currentFavoriteIds;
    emit(CharactersLoading());
    final result = await _getCharactersUseCase.execute(
      page: 1,
      status: event.status,
      gender: event.gender,
    );
    _handleResult(
      result,
      emit,
      1,
      null,
      event.status,
      event.gender,
      favoriteIds,
    );
  }

  Future<void> _onRefreshCharacters(
    RefreshCharactersEvent event,
    Emitter<CharactersState> emit,
  ) async {
    // Keeps current filters/search if any, but resets to page 1
    if (state is! CharactersLoaded) {
      add(FetchCharactersEvent());
      return;
    }
    final currentState = state as CharactersLoaded;
    final favoriteIds = currentState.favoriteIds;
    emit(CharactersLoading());

    final result = await _getCharactersUseCase.execute(
      page: 1,
      name: currentState.currentQuery,
      status: currentState.currentStatus,
      gender: currentState.currentGender,
    );

    _handleResult(
      result,
      emit,
      1,
      currentState.currentQuery,
      currentState.currentStatus,
      currentState.currentGender,
      favoriteIds,
    );
  }

  Future<void> _onToggleFavorite(
    ToggleFavoriteEvent event,
    Emitter<CharactersState> emit,
  ) async {
    final currentState = state;
    if (currentState is! CharactersLoaded) return;

    // 1. Convert the Object ID to a strict String
    final targetId = event.id.toString();

    // 2. Optimistic UI Update
    final newFavorites = Set<String>.from(currentState.favoriteIds);
    if (newFavorites.contains(targetId)) {
      newFavorites.remove(targetId);
    } else {
      newFavorites.add(targetId);
    }

    emit(currentState.copyWith(favoriteIds: newFavorites));

    // 3. Persist in background
    await _toggleFavoriteUsecase.execute(targetId);
  }

  // Helper method to keep code DRY
  void _handleResult(
    Result<List<CharacterEntity>, Failures> result,
    Emitter<CharactersState> emit,
    int page,
    String? query,
    String? status,
    String? gender,
    Set<String> favoriteIds, // ─── NEW ───
  ) {
    switch (result) {
      case Success(value: final characters):
        final favorites = _localDataSource.getFavoriteIds();
        emit(
          CharactersLoaded(
            characters: characters,
            currentPage: page,
            hasReachedMax: characters.isEmpty,
            currentQuery: query,
            currentStatus: status,
            currentGender: gender,
            favoriteIds: favorites, // ─── NEW ───
          ),
        );
        break;
      case Error(failure: final failure):
        emit(CharactersError(failure.message));
        break;
    }
  }
}
