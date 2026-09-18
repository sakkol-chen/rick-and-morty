import 'package:ferry/ferry.dart';
import 'package:injectable/injectable.dart';
import 'package:rick_and_morty/features/characters/data/datasources/favorites_local_datasource.dart';
import 'package:rick_and_morty/features/characters/domain/entities/characters_entity.dart';

@lazySingleton
class GetBookmarkedCharactersUseCase {
  final FavoritesLocalDataSource localDataSource;
  final Client ferryClient;
  GetBookmarkedCharactersUseCase(this.ferryClient, this.localDataSource);

  List<CharacterEntity> execute() {
    final favoriteIds = localDataSource.getFavoriteIds();
    final List<CharacterEntity> bookmarkedCharacters = [];

    for (final id in favoriteIds) {
      final cacheKey = 'Character:$id';
      final cachedData = ferryClient.cache.store.get(cacheKey);

      if (cachedData != null) {
        bookmarkedCharacters.add(
          CharacterEntity(
            id: id,
            name: cachedData['name'] as String? ?? 'Unknown',
            status: cachedData['status'] as String? ?? 'Unknown',
            species: cachedData['species'] as String? ?? 'Unknown',
            gender: cachedData['gender'] as String? ?? 'Unknown',
            imageUrl: cachedData['image'] as String? ?? '',
            originName: 'Unknown', // Not needed for the bookmark UI
            locationName: 'Unknown', // Not needed for the bookmark UI
            isFavorite: true,
          ),
        );
      }
    }

    return bookmarkedCharacters;
  }
}
