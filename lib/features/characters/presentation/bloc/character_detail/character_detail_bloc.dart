import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import 'package:rick_and_morty/core/common/result.dart';
import 'package:rick_and_morty/features/characters/domain/usecases/get_character_detail_use_case.dart';
import 'character_detail_event.dart';
import 'character_detail_state.dart';

@injectable
class CharacterDetailBloc
    extends Bloc<CharacterDetailEvent, CharacterDetailState> {
  final GetCharacterDetailUseCase characterDetailUseCase;
  CharacterDetailBloc(this.characterDetailUseCase)
    : super(const CharacterDetailInitial()) {
    on<FetchCharacterDetailEvent>(_onFetchCharacterDetail);
  }

  Future<void> _onFetchCharacterDetail(
    FetchCharacterDetailEvent event,
    Emitter<CharacterDetailState> emit,
  ) async {
    emit(const CharacterDetailLoading());
    final result = await characterDetailUseCase.execute(event.id);

    switch (result) {
      case Success():
        emit(CharacterDetailLoaded(result.value));
        break;
      case Error():
        emit(CharacterDetailError(result.failure.message));
        break;
    }
  }
}
