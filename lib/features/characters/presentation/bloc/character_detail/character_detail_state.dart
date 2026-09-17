import 'package:rick_and_morty/features/characters/domain/entities/character_detail_entity.dart';

sealed class CharacterDetailState {
  const CharacterDetailState();
}

class CharacterDetailInitial extends CharacterDetailState {
  const CharacterDetailInitial();
}

class CharacterDetailLoading extends CharacterDetailState {
  const CharacterDetailLoading();
}

class CharacterDetailLoaded extends CharacterDetailState {
  final CharacterDetailEntity character;
  
  const CharacterDetailLoaded(this.character);
}

class CharacterDetailError extends CharacterDetailState {
  final String message;
  
  const CharacterDetailError(this.message);
}