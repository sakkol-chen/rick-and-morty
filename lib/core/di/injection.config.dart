// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:ferry/ferry.dart' as _i25;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

import '../../features/bookmarks/presentation/bloc/bookmarks_bloc.dart'
    as _i262;
import '../../features/characters/data/datasources/characters_remote_datasource.dart'
    as _i951;
import '../../features/characters/data/datasources/favorites_local_datasource.dart'
    as _i130;
import '../../features/characters/data/repositories/characters_repository_impl.dart'
    as _i575;
import '../../features/characters/domain/repositories/characters_repository.dart'
    as _i739;
import '../../features/characters/domain/usecases/get_bookmarked_characters_use_case.dart'
    as _i713;
import '../../features/characters/domain/usecases/get_character_detail_use_case.dart'
    as _i867;
import '../../features/characters/domain/usecases/get_characters_use_case.dart'
    as _i1005;
import '../../features/characters/domain/usecases/toggle_favorite_use_case.dart'
    as _i1028;
import '../../features/characters/presentation/bloc/character_detail/character_detail_bloc.dart'
    as _i235;
import '../../features/characters/presentation/bloc/characters_bloc.dart'
    as _i91;
import 'network_module.dart' as _i567;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final networkModule = _$NetworkModule();
    await gh.factoryAsync<_i460.SharedPreferences>(
      () => networkModule.prefs,
      preResolve: true,
    );
    gh.lazySingleton<_i25.Client>(() => networkModule.ferryClient);
    gh.lazySingleton<_i951.CharactersRemoteDataSource>(
      () => _i951.CharactersRemoteDataSourceImpl(gh<_i25.Client>()),
    );
    gh.lazySingleton<_i739.CharactersRepository>(
      () => _i575.CharactersRepositoryImpl(
        gh<_i951.CharactersRemoteDataSource>(),
      ),
    );
    gh.lazySingleton<_i130.FavoritesLocalDataSource>(
      () => _i130.FavoritesLocalDataSourceImpl(gh<_i460.SharedPreferences>()),
    );
    gh.lazySingleton<_i713.GetBookmarkedCharactersUseCase>(
      () => _i713.GetBookmarkedCharactersUseCase(
        gh<_i25.Client>(),
        gh<_i130.FavoritesLocalDataSource>(),
      ),
    );
    gh.lazySingleton<_i1005.GetCharactersUseCase>(
      () => _i1005.GetCharactersUseCase(gh<_i739.CharactersRepository>()),
    );
    gh.lazySingleton<_i867.GetCharacterDetailUseCase>(
      () => _i867.GetCharacterDetailUseCase(gh<_i739.CharactersRepository>()),
    );
    gh.lazySingleton<_i1028.ToggleFavoriteUseCase>(
      () => _i1028.ToggleFavoriteUseCase(
        gh<_i130.FavoritesLocalDataSource>(),
        gh<_i25.Client>(),
      ),
    );
    gh.factory<_i235.CharacterDetailBloc>(
      () => _i235.CharacterDetailBloc(gh<_i867.GetCharacterDetailUseCase>()),
    );
    gh.factory<_i91.CharactersBloc>(
      () => _i91.CharactersBloc(
        gh<_i1005.GetCharactersUseCase>(),
        gh<_i130.FavoritesLocalDataSource>(),
        gh<_i1028.ToggleFavoriteUseCase>(),
      ),
    );
    gh.factory<_i262.BookmarksBloc>(
      () => _i262.BookmarksBloc(
        gh<_i713.GetBookmarkedCharactersUseCase>(),
        gh<_i1028.ToggleFavoriteUseCase>(),
      ),
    );
    return this;
  }
}

class _$NetworkModule extends _i567.NetworkModule {}
