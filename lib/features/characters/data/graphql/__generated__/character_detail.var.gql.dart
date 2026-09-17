// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:rick_and_morty/__generated__/serializers.gql.dart' as _i1;

part 'character_detail.var.gql.g.dart';

abstract class GGetCharacterDetailVars
    implements Built<GGetCharacterDetailVars, GGetCharacterDetailVarsBuilder> {
  GGetCharacterDetailVars._();

  factory GGetCharacterDetailVars(
          [void Function(GGetCharacterDetailVarsBuilder b) updates]) =
      _$GGetCharacterDetailVars;

  String get id;
  static Serializer<GGetCharacterDetailVars> get serializer =>
      _$gGetCharacterDetailVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetCharacterDetailVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetCharacterDetailVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetCharacterDetailVars.serializer,
        json,
      );
}
