import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:rick_and_morty/features/characters/domain/entities/characters_entity.dart';
import 'package:rick_and_morty/features/characters/domain/usecases/get_bookmarked_characters_use_case.dart';
import 'package:rick_and_morty/features/characters/domain/usecases/toggle_favorite_use_case.dart';

// --- EVENTS ---
sealed class BookmarksEvent {}

class LoadBookmarksEvent extends BookmarksEvent {}

class RemoveBookmarkEvent extends BookmarksEvent {
  final String id;
  RemoveBookmarkEvent(this.id);
}

// --- STATES ---
sealed class BookmarksState {}

class BookmarksInitial extends BookmarksState {}

class BookmarksLoaded extends BookmarksState {
  final List<CharacterEntity> characters;
  BookmarksLoaded(this.characters);
}

// --- BLOC ---
@injectable
class BookmarksBloc extends Bloc<BookmarksEvent, BookmarksState> {
  final GetBookmarkedCharactersUseCase getBookmarksUseCase;

  // FIXED: Lowercase 'c' to match your exact class name!
  final ToggleFavoriteUseCase toggleFavoriteUseCase;

  BookmarksBloc(this.getBookmarksUseCase, this.toggleFavoriteUseCase)
    : super(BookmarksInitial()) {
    on<LoadBookmarksEvent>((event, emit) {
      final characters = getBookmarksUseCase.execute();
      emit(BookmarksLoaded(characters));
    });

    on<RemoveBookmarkEvent>((event, emit) async {
      await toggleFavoriteUseCase.execute(event.id);

      final characters = getBookmarksUseCase.execute();
      emit(BookmarksLoaded(characters));
    });
  }
}
