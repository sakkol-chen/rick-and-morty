// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart' show StandardJsonPlugin;
import 'package:ferry_exec/ferry_exec.dart';
import 'package:gql_code_builder_serializers/gql_code_builder_serializers.dart'
    show OperationSerializer;
import 'package:rick_and_morty/__generated__/schema.schema.gql.dart'
    show
        GCacheControlScope,
        GFilterCharacter,
        GFilterEpisode,
        GFilterLocation,
        GUpload;
import 'package:rick_and_morty/features/characters/data/graphql/__generated__/character_detail.data.gql.dart'
    show
        GGetCharacterDetailData,
        GGetCharacterDetailData_character,
        GGetCharacterDetailData_character_episode,
        GGetCharacterDetailData_character_location,
        GGetCharacterDetailData_character_origin;
import 'package:rick_and_morty/features/characters/data/graphql/__generated__/character_detail.req.gql.dart'
    show GGetCharacterDetailReq;
import 'package:rick_and_morty/features/characters/data/graphql/__generated__/character_detail.var.gql.dart'
    show GGetCharacterDetailVars;
import 'package:rick_and_morty/features/characters/data/graphql/__generated__/characters.data.gql.dart'
    show
        GGetCharactersData,
        GGetCharactersData_characters,
        GGetCharactersData_characters_info,
        GGetCharactersData_characters_results,
        GGetCharactersData_characters_results_location,
        GGetCharactersData_characters_results_origin;
import 'package:rick_and_morty/features/characters/data/graphql/__generated__/characters.req.gql.dart'
    show GGetCharactersReq;
import 'package:rick_and_morty/features/characters/data/graphql/__generated__/characters.var.gql.dart'
    show GGetCharactersVars;

part 'serializers.gql.g.dart';

final SerializersBuilder _serializersBuilder = _$serializers.toBuilder()
  ..add(OperationSerializer())
  ..addPlugin(StandardJsonPlugin());
@SerializersFor([
  GCacheControlScope,
  GFilterCharacter,
  GFilterEpisode,
  GFilterLocation,
  GGetCharacterDetailData,
  GGetCharacterDetailData_character,
  GGetCharacterDetailData_character_episode,
  GGetCharacterDetailData_character_location,
  GGetCharacterDetailData_character_origin,
  GGetCharacterDetailReq,
  GGetCharacterDetailVars,
  GGetCharactersData,
  GGetCharactersData_characters,
  GGetCharactersData_characters_info,
  GGetCharactersData_characters_results,
  GGetCharactersData_characters_results_location,
  GGetCharactersData_characters_results_origin,
  GGetCharactersReq,
  GGetCharactersVars,
  GUpload,
])
final Serializers serializers = _serializersBuilder.build();
