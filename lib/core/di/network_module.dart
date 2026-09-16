import 'package:injectable/injectable.dart';
import 'package:ferry/ferry.dart';
import 'package:gql_http_link/gql_http_link.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class NetworkModule {
  // @preResolve tells DI to wait for this Future to finish before booting the app
  @preResolve
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();

  // @lazySigleton ensure the whole app shared exactly One network client
  @lazySingleton
  Client get ferryClient {
    final link = HttpLink('https://rickandmortyapi.com/graphql');

    final cach = Cache();

    return Client(link: link, cache: cach);
  }
}
