

part of 'characters_bloc.dart';


sealed class CharactersState {
  const CharactersState();
}

class CharactersInitial extends CharactersState {}

class CharactersLoading extends CharactersState {}

class CharactersLoaded extends CharactersState {
  final List<CharacterEntity> characters;
  final int currentPage;
  final bool hasReachedMax;
  final String? currentQuery;
  final String? currentStatus;
  final String? currentGender;
  final bool isPaginating;

  const CharactersLoaded({
    required this.characters,
    this.currentPage = 1,
    this.hasReachedMax = false,
    this.currentQuery,
    this.currentStatus,
    this.currentGender,
    this.isPaginating = false,
  });

  CharactersLoaded copyWith({
    List<CharacterEntity>? characters,
    int? currentPage,
    bool? hasReachedMax,
    String? currentQuery,
    String? currentStatus,
    String? currentGender,
    bool? isPaginating,
  }) {
    return CharactersLoaded(
      characters: characters ?? this.characters,
      currentPage: currentPage ?? this.currentPage,
      hasReachedMax: hasReachedMax ?? this.hasReachedMax,
      currentQuery: currentQuery ?? this.currentQuery,
      currentStatus: currentStatus ?? this.currentStatus,
      currentGender: currentGender ?? this.currentGender,
      isPaginating: isPaginating ?? this.isPaginating,
    );
  }
}

class CharactersError extends CharactersState {
  final String message;
  const CharactersError(this.message);
}
