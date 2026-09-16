part of 'characters_bloc.dart';

sealed class CharactersEvent {
  const CharactersEvent();
}

class FetchCharactersEvent extends CharactersEvent {}

class FetchNextPageEvent extends CharactersEvent {}

class SearchCharactersEvent extends CharactersEvent {
  final String query;
  const SearchCharactersEvent(this.query);
}

class FilterCharactersEvent extends CharactersEvent {
  final String? status;
  final String? gender;
  const FilterCharactersEvent({this.status, this.gender});
}

class RefreshCharactersEvent extends CharactersEvent {}