import 'package:injectable/injectable.dart';

// STRICT ABSOLUTE IMPORTS
import 'package:rick_and_morty/core/common/result.dart';
import 'package:rick_and_morty/core/error/failures.dart';
import 'package:rick_and_morty/features/characters/domain/entities/characters_entity.dart';
import 'package:rick_and_morty/features/characters/domain/repositories/characters_repository.dart';

@lazySingleton
class GetCharactersUseCase {
  final CharactersRepository repository;

  GetCharactersUseCase(this.repository);

  Future<Result<List<CharacterEntity>, Failures>> execute({
    required int page,
    String? name,
    String? status,
    String? gender,
  }) async {
    return await repository.getCharacters(
      page: page,
      name: name,
      status: status,
      gender: gender,
    );
  }
}
