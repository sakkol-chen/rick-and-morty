import 'package:injectable/injectable.dart';

// STRICT ABSOLUTE IMPORTS
import 'package:rick_and_morty/core/common/result.dart';
import 'package:rick_and_morty/core/error/failures.dart';
import 'package:rick_and_morty/core/error/link_error_parser.dart';
import 'package:rick_and_morty/features/characters/domain/entities/characters_entity.dart';
import 'package:rick_and_morty/features/characters/domain/entities/character_detail_entity.dart';
import 'package:rick_and_morty/features/characters/domain/repositories/characters_repository.dart';
import 'package:rick_and_morty/features/characters/data/datasources/characters_remote_datasource.dart';

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

  @override
  Future<Result<CharacterDetailEntity, Failures>> getCharacterDetail(
    String id,
  ) async {
    try {
      final response = await remoteDataSource.getCharacterDetail(id);

      if (response.hasErrors) {
        return Error<CharacterDetailEntity, Failures>(
          LinkErrorParser.parse(response) as Failures,
        );
      }

      final dto = response.data?.character;
      if (dto == null) {
        return const Error<CharacterDetailEntity, Failures>(
          NotFoundFailure('Character Not Found'),
        );
      }

      final episodes = dto.episode.whereType<dynamic>().map((e) {
        return EpisodeEntity(
          id: e.id ?? '',
          name: e.name ?? 'Unknown',
          airDate: e.air_date ?? 'Unknown',
          episodeCode: e.episode ?? 'Unknown',
        );
      }).toList();

      // 2. Flatten and map the main entity
      final entity = CharacterDetailEntity(
        id: dto.id ?? '',
        name: dto.name ?? 'Unknown',
        status: dto.status ?? 'Unknown',
        species: dto.species ?? 'Unknown',
        type: dto.type ?? '',
        gender: dto.gender ?? 'Unknown',
        imageUrl: dto.image ?? '',
        originName: dto.origin?.name ?? 'Unknown',
        originDimension: dto.origin?.dimension ?? 'Unknown',
        locationName: dto.location?.name ?? 'Unknown',
        locationDimension: dto.location?.dimension ?? 'Unknown',
        episodes: episodes,
      );
      return Success<CharacterDetailEntity, Failures>(entity);
    } catch (e) {
      return const Error<CharacterDetailEntity, Failures>(
        ServerFailure('An unexpected client error occurred.'),
      );
    }
  }
}
