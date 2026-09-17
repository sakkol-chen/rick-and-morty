import 'package:injectable/injectable.dart';
import 'package:rick_and_morty/core/common/result.dart';
import 'package:rick_and_morty/core/error/failures.dart';
import 'package:rick_and_morty/features/characters/domain/entities/character_detail_entity.dart';
import 'package:rick_and_morty/features/characters/domain/repositories/characters_repository.dart';

@lazySingleton
class GetCharacterDetailUseCase {
  final CharactersRepository charactersRepository;
  GetCharacterDetailUseCase(this.charactersRepository);

  Future<Result<CharacterDetailEntity, Failures>> execute(String id) async {
    return await charactersRepository.getCharacterDetail(id);
  }
}
