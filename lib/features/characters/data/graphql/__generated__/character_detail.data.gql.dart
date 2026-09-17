// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:rick_and_morty/__generated__/serializers.gql.dart' as _i1;

part 'character_detail.data.gql.g.dart';

abstract class GGetCharacterDetailData
    implements Built<GGetCharacterDetailData, GGetCharacterDetailDataBuilder> {
  GGetCharacterDetailData._();

  factory GGetCharacterDetailData(
          [void Function(GGetCharacterDetailDataBuilder b) updates]) =
      _$GGetCharacterDetailData;

  static void _initializeBuilder(GGetCharacterDetailDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GGetCharacterDetailData_character? get character;
  static Serializer<GGetCharacterDetailData> get serializer =>
      _$gGetCharacterDetailDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetCharacterDetailData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetCharacterDetailData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetCharacterDetailData.serializer,
        json,
      );
}

abstract class GGetCharacterDetailData_character
    implements
        Built<GGetCharacterDetailData_character,
            GGetCharacterDetailData_characterBuilder> {
  GGetCharacterDetailData_character._();

  factory GGetCharacterDetailData_character(
          [void Function(GGetCharacterDetailData_characterBuilder b) updates]) =
      _$GGetCharacterDetailData_character;

  static void _initializeBuilder(GGetCharacterDetailData_characterBuilder b) =>
      b..G__typename = 'Character';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get id;
  String? get name;
  String? get status;
  String? get species;
  String? get type;
  String? get gender;
  String? get image;
  GGetCharacterDetailData_character_origin? get origin;
  GGetCharacterDetailData_character_location? get location;
  BuiltList<GGetCharacterDetailData_character_episode?> get episode;
  static Serializer<GGetCharacterDetailData_character> get serializer =>
      _$gGetCharacterDetailDataCharacterSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetCharacterDetailData_character.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetCharacterDetailData_character? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetCharacterDetailData_character.serializer,
        json,
      );
}

abstract class GGetCharacterDetailData_character_origin
    implements
        Built<GGetCharacterDetailData_character_origin,
            GGetCharacterDetailData_character_originBuilder> {
  GGetCharacterDetailData_character_origin._();

  factory GGetCharacterDetailData_character_origin(
      [void Function(GGetCharacterDetailData_character_originBuilder b)
          updates]) = _$GGetCharacterDetailData_character_origin;

  static void _initializeBuilder(
          GGetCharacterDetailData_character_originBuilder b) =>
      b..G__typename = 'Location';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get id;
  String? get name;
  String? get dimension;
  static Serializer<GGetCharacterDetailData_character_origin> get serializer =>
      _$gGetCharacterDetailDataCharacterOriginSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetCharacterDetailData_character_origin.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetCharacterDetailData_character_origin? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetCharacterDetailData_character_origin.serializer,
        json,
      );
}

abstract class GGetCharacterDetailData_character_location
    implements
        Built<GGetCharacterDetailData_character_location,
            GGetCharacterDetailData_character_locationBuilder> {
  GGetCharacterDetailData_character_location._();

  factory GGetCharacterDetailData_character_location(
      [void Function(GGetCharacterDetailData_character_locationBuilder b)
          updates]) = _$GGetCharacterDetailData_character_location;

  static void _initializeBuilder(
          GGetCharacterDetailData_character_locationBuilder b) =>
      b..G__typename = 'Location';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get id;
  String? get name;
  String? get dimension;
  static Serializer<GGetCharacterDetailData_character_location>
      get serializer => _$gGetCharacterDetailDataCharacterLocationSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetCharacterDetailData_character_location.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetCharacterDetailData_character_location? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetCharacterDetailData_character_location.serializer,
        json,
      );
}

abstract class GGetCharacterDetailData_character_episode
    implements
        Built<GGetCharacterDetailData_character_episode,
            GGetCharacterDetailData_character_episodeBuilder> {
  GGetCharacterDetailData_character_episode._();

  factory GGetCharacterDetailData_character_episode(
      [void Function(GGetCharacterDetailData_character_episodeBuilder b)
          updates]) = _$GGetCharacterDetailData_character_episode;

  static void _initializeBuilder(
          GGetCharacterDetailData_character_episodeBuilder b) =>
      b..G__typename = 'Episode';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get id;
  String? get name;
  String? get air_date;
  String? get episode;
  static Serializer<GGetCharacterDetailData_character_episode> get serializer =>
      _$gGetCharacterDetailDataCharacterEpisodeSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetCharacterDetailData_character_episode.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetCharacterDetailData_character_episode? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetCharacterDetailData_character_episode.serializer,
        json,
      );
}
