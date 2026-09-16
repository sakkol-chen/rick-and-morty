import 'package:ferry/ferry.dart';
import 'package:injectable/injectable.dart';
import '../graphql/__generated__/characters.req.gql.dart';
import '../graphql/__generated__/characters.data.gql.dart';
import '../graphql/__generated__/characters.var.gql.dart';
import '../../../../../__generated__/schema.schema.gql.dart';

abstract class CharactersRemoteDataSource {
  Future<OperationResponse<GGetCharactersData, GGetCharactersVars>>
  getCharacters({
    required int page,
    String? name,
    String? status,
    String? gender,
  });
}

@LazySingleton(as: CharactersRemoteDataSource)
class CharactersRemoteDataSourceImpl implements CharactersRemoteDataSource {
  final Client client;

  CharactersRemoteDataSourceImpl(this.client);

  @override
  Future<OperationResponse<GGetCharactersData, GGetCharactersVars>>
  getCharacters({
    required int page,
    String? name,
    String? status,
    String? gender,
  }) async {
    final req = GGetCharactersReq((b) {
      b.vars.page = page;
      if (name != null || status != null || gender != null) {
        b.vars.filter.update((f) {
          if (name != null) f.name = name;
          if (status != null) f.status = status;
          if (gender != null) f.gender = gender;
        });
      }
    });

    return await client.request(req).first;
  }
}
