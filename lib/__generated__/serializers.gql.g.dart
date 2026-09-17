// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'serializers.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializers _$serializers =
    (Serializers().toBuilder()
          ..add(FetchPolicy.serializer)
          ..add(GCacheControlScope.serializer)
          ..add(GFilterCharacter.serializer)
          ..add(GFilterEpisode.serializer)
          ..add(GFilterLocation.serializer)
          ..add(GGetCharacterDetailData.serializer)
          ..add(GGetCharacterDetailData_character.serializer)
          ..add(GGetCharacterDetailData_character_episode.serializer)
          ..add(GGetCharacterDetailData_character_location.serializer)
          ..add(GGetCharacterDetailData_character_origin.serializer)
          ..add(GGetCharacterDetailReq.serializer)
          ..add(GGetCharacterDetailVars.serializer)
          ..add(GGetCharactersData.serializer)
          ..add(GGetCharactersData_characters.serializer)
          ..add(GGetCharactersData_characters_info.serializer)
          ..add(GGetCharactersData_characters_results.serializer)
          ..add(GGetCharactersData_characters_results_location.serializer)
          ..add(GGetCharactersData_characters_results_origin.serializer)
          ..add(GGetCharactersReq.serializer)
          ..add(GGetCharactersVars.serializer)
          ..add(GUpload.serializer)
          ..addBuilderFactory(
            const FullType(BuiltList, const [
              const FullType.nullable(
                GGetCharacterDetailData_character_episode,
              ),
            ]),
            () => ListBuilder<GGetCharacterDetailData_character_episode?>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [
              const FullType.nullable(GGetCharactersData_characters_results),
            ]),
            () => ListBuilder<GGetCharactersData_characters_results?>(),
          ))
        .build();

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
