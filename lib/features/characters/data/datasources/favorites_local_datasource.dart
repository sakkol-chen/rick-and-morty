import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class FavoritesLocalDataSource {
  Set<String> getFavoriteIds();
  Future<void> toggleFavorite(String id);
}

@lazySingleton
class FavoritesLocalDataSourceImpl implements FavoritesLocalDataSource {
  static const _favoriteskey = 'favorite_character_ids';
  final SharedPreferences _prefs;
  FavoritesLocalDataSourceImpl(this._prefs);
  @override
  Set<String> getFavoriteIds() {
    final list = _prefs.getStringList(_favoriteskey) ?? [];

    return list.toSet();
  }

  @override
  Future<void> toggleFavorite(String id) async {
    final favorites = getFavoriteIds();

    if (favorites.contains(id)) {
      favorites.remove(id);
    } else {
      favorites.add(id);
    }

    await _prefs.setStringList(_favoriteskey, favorites.toList());
  }
}
