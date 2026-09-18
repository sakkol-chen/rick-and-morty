import 'package:ferry/ferry.dart';
import 'package:injectable/injectable.dart';
import 'package:rick_and_morty/features/characters/data/datasources/favorites_local_datasource.dart';
import 'package:rick_and_morty/features/characters/data/graphql/__generated__/character_detail.req.gql.dart';

@lazySingleton
class ToggleFavoriteUseCase {
  final FavoritesLocalDataSource localDataSource;
  final Client ferryClient;

  ToggleFavoriteUseCase(this.localDataSource, this.ferryClient);

  Future<void> execute(String characterId) async {
    await localDataSource.toggleFavorite(characterId);

    final req = GGetCharacterDetailReq((b) => b..vars.id = characterId);

    final cacheData = ferryClient.cache.readQuery(req);

    if (cacheData != null) {
      ferryClient.cache.writeQuery(req, cacheData.rebuild((b) => b));
    }
  }
}
