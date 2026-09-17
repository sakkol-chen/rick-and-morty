sealed class CharacterDetailEvent {
  const CharacterDetailEvent();
}

class FetchCharacterDetailEvent extends CharacterDetailEvent {
  final String id;

  const FetchCharacterDetailEvent(this.id);
}
