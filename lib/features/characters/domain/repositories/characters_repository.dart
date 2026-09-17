import 'package:rick_and_morty/core/common/result.dart';
import 'package:rick_and_morty/core/error/failures.dart';
import 'package:rick_and_morty/features/characters/domain/entities/character_detail_entity.dart';
import 'package:rick_and_morty/features/characters/domain/entities/characters_entity.dart';

abstract class CharactersRepository {
  Future<Result<List<CharacterEntity>, Failures>> getCharacters({
    required int page,
    String? name,
    String? status,
    String? gender,
  });

  Future<Result<CharacterDetailEntity, Failures>> getCharacterDetail(
    String id,
  );
}
