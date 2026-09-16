import 'package:injectable/injectable.dart';

// 1. ALL IMPORTS ARE NOW RELATIVE!
import '../../../../core/common/result.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/error/link_error_parser.dart';
import '../../domain/entities/characters_entity.dart';
import '../../domain/repositories/characters_repository.dart';
import '../datasources/characters_remote_datasource.dart';

@LazySingleton(as: CharactersRepository)
class CharactersRepositoryImpl implements CharactersRepository {
  final CharactersRemoteDataSource remoteDataSource;

  CharactersRepositoryImpl(this.remoteDataSource);

  @override
  Future<Result<List<CharacterEntity>, Failures>> getCharacters({
    required int page,
    String? name,
    String? status,
    String? gender,
  }) async {
    try {
      final response = await remoteDataSource.getCharacters(
        page: page,
        name: name,
        status: status,
        gender: gender,
      );

      if (response.hasErrors) {
        // 2. Ensuring the 'Failures' plural matches exactly
        return Error<List<CharacterEntity>, Failures>(
          LinkErrorParser.parse(response) as Failures,
        );
      }

      final results = response.data?.characters?.results;
      if (results == null) {
        return const Error<List<CharacterEntity>, Failures>(
          NotFoundFailure('No characters found in this dimension.'),
        );
      }

      final entities = results.whereType<dynamic>().map((dto) {
        return CharacterEntity(
          id: dto.id ?? '',
          name: dto.name ?? 'Unknown',
          status: dto.status ?? 'Unknown',
          species: dto.species ?? 'Unknown',
          gender: dto.gender ?? 'Unknown',
          imageUrl: dto.image ?? '',
          originName: dto.origin?.name ?? 'Unknown',
          locationName: dto.location?.name ?? 'Unknown',
          isFavorite: false,
        );
      }).toList();

      // 3. Ensuring the 'Failures' plural matches exactly
      return Success<List<CharacterEntity>, Failures>(entities);
    } catch (e) {
      // 4. Ensuring the 'Failures' plural matches exactly
      return const Error<List<CharacterEntity>, Failures>(
        ServerFailure('An unexpected client error occurred.'),
      );
    }
  }
}
