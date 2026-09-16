// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:rick_and_morty/__generated__/serializers.gql.dart' as _i1;

part 'characters.data.gql.g.dart';

abstract class GGetCharactersData
    implements Built<GGetCharactersData, GGetCharactersDataBuilder> {
  GGetCharactersData._();

  factory GGetCharactersData(
          [void Function(GGetCharactersDataBuilder b) updates]) =
      _$GGetCharactersData;

  static void _initializeBuilder(GGetCharactersDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GGetCharactersData_characters? get characters;
  static Serializer<GGetCharactersData> get serializer =>
      _$gGetCharactersDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetCharactersData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetCharactersData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetCharactersData.serializer,
        json,
      );
}

abstract class GGetCharactersData_characters
    implements
        Built<GGetCharactersData_characters,
            GGetCharactersData_charactersBuilder> {
  GGetCharactersData_characters._();

  factory GGetCharactersData_characters(
          [void Function(GGetCharactersData_charactersBuilder b) updates]) =
      _$GGetCharactersData_characters;

  static void _initializeBuilder(GGetCharactersData_charactersBuilder b) =>
      b..G__typename = 'Characters';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GGetCharactersData_characters_info? get info;
  BuiltList<GGetCharactersData_characters_results?>? get results;
  static Serializer<GGetCharactersData_characters> get serializer =>
      _$gGetCharactersDataCharactersSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetCharactersData_characters.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetCharactersData_characters? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetCharactersData_characters.serializer,
        json,
      );
}

abstract class GGetCharactersData_characters_info
    implements
        Built<GGetCharactersData_characters_info,
            GGetCharactersData_characters_infoBuilder> {
  GGetCharactersData_characters_info._();

  factory GGetCharactersData_characters_info(
      [void Function(GGetCharactersData_characters_infoBuilder b)
          updates]) = _$GGetCharactersData_characters_info;

  static void _initializeBuilder(GGetCharactersData_characters_infoBuilder b) =>
      b..G__typename = 'Info';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get count;
  int? get pages;
  int? get next;
  int? get prev;
  static Serializer<GGetCharactersData_characters_info> get serializer =>
      _$gGetCharactersDataCharactersInfoSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetCharactersData_characters_info.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetCharactersData_characters_info? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetCharactersData_characters_info.serializer,
        json,
      );
}

abstract class GGetCharactersData_characters_results
    implements
        Built<GGetCharactersData_characters_results,
            GGetCharactersData_characters_resultsBuilder> {
  GGetCharactersData_characters_results._();

  factory GGetCharactersData_characters_results(
      [void Function(GGetCharactersData_characters_resultsBuilder b)
          updates]) = _$GGetCharactersData_characters_results;

  static void _initializeBuilder(
          GGetCharactersData_characters_resultsBuilder b) =>
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
  GGetCharactersData_characters_results_origin? get origin;
  GGetCharactersData_characters_results_location? get location;
  static Serializer<GGetCharactersData_characters_results> get serializer =>
      _$gGetCharactersDataCharactersResultsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetCharactersData_characters_results.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetCharactersData_characters_results? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetCharactersData_characters_results.serializer,
        json,
      );
}

abstract class GGetCharactersData_characters_results_origin
    implements
        Built<GGetCharactersData_characters_results_origin,
            GGetCharactersData_characters_results_originBuilder> {
  GGetCharactersData_characters_results_origin._();

  factory GGetCharactersData_characters_results_origin(
      [void Function(GGetCharactersData_characters_results_originBuilder b)
          updates]) = _$GGetCharactersData_characters_results_origin;

  static void _initializeBuilder(
          GGetCharactersData_characters_results_originBuilder b) =>
      b..G__typename = 'Location';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get id;
  String? get name;
  static Serializer<GGetCharactersData_characters_results_origin>
      get serializer => _$gGetCharactersDataCharactersResultsOriginSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetCharactersData_characters_results_origin.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetCharactersData_characters_results_origin? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetCharactersData_characters_results_origin.serializer,
        json,
      );
}

abstract class GGetCharactersData_characters_results_location
    implements
        Built<GGetCharactersData_characters_results_location,
            GGetCharactersData_characters_results_locationBuilder> {
  GGetCharactersData_characters_results_location._();

  factory GGetCharactersData_characters_results_location(
      [void Function(GGetCharactersData_characters_results_locationBuilder b)
          updates]) = _$GGetCharactersData_characters_results_location;

  static void _initializeBuilder(
          GGetCharactersData_characters_results_locationBuilder b) =>
      b..G__typename = 'Location';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get id;
  String? get name;
  static Serializer<GGetCharactersData_characters_results_location>
      get serializer => _$gGetCharactersDataCharactersResultsLocationSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetCharactersData_characters_results_location.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetCharactersData_characters_results_location? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetCharactersData_characters_results_location.serializer,
        json,
      );
}
