import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:rick_and_morty/core/error/failures.dart';
import 'package:rick_and_morty/features/characters/domain/usecases/get_characters_use_case.dart';
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

  CharactersBloc(this._getCharactersUseCase) : super(CharactersInitial()) {
    on<FetchCharactersEvent>(_onFetchCharacters);
    on<FetchNextPageEvent>(_onFetchNextPage);
    on<RefreshCharactersEvent>(_onRefreshCharacters);
    on<FilterCharactersEvent>(_onFilterCharacters);

    // We apply the debouncer strictly to the search event!
    on<SearchCharactersEvent>(
      _onSearchCharacters,
      transformer: debounce(const Duration(milliseconds: 300)),
    );
  }

  Future<void> _onFetchCharacters(
    FetchCharactersEvent event,
    Emitter<CharactersState> emit,
  ) async {
    emit(CharactersLoading());
    final result = await _getCharactersUseCase.execute(page: 1);

    _handleResult(result, emit, 1, null, null, null);
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
    emit(CharactersLoading());
    final result = await _getCharactersUseCase.execute(
      page: 1,
      name: event.query,
    );
    _handleResult(result, emit, 1, event.query, null, null);
  }

  Future<void> _onFilterCharacters(
    FilterCharactersEvent event,
    Emitter<CharactersState> emit,
  ) async {
    emit(CharactersLoading());
    final result = await _getCharactersUseCase.execute(
      page: 1,
      status: event.status,
      gender: event.gender,
    );
    _handleResult(result, emit, 1, null, event.status, event.gender);
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
    );
  }

  // Helper method to keep code DRY
  void _handleResult(
    Result<List<CharacterEntity>, Failures> result,
    Emitter<CharactersState> emit,
    int page,
    String? query,
    String? status,
    String? gender,
  ) {
    switch (result) {
      case Success(value: final characters):
        emit(
          CharactersLoaded(
            characters: characters,
            currentPage: page,
            hasReachedMax: characters.isEmpty,
            currentQuery: query,
            currentStatus: status,
            currentGender: gender,
          ),
        );
        break;
      case Error(failure: final failure):
        emit(CharactersError(failure.message));
        break;
    }
  }
}
