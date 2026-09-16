// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:rick_and_morty/__generated__/schema.schema.gql.dart' as _i1;
import 'package:rick_and_morty/__generated__/serializers.gql.dart' as _i2;

part 'characters.var.gql.g.dart';

abstract class GGetCharactersVars
    implements Built<GGetCharactersVars, GGetCharactersVarsBuilder> {
  GGetCharactersVars._();

  factory GGetCharactersVars(
          [void Function(GGetCharactersVarsBuilder b) updates]) =
      _$GGetCharactersVars;

  int? get page;
  _i1.GFilterCharacter? get filter;
  static Serializer<GGetCharactersVars> get serializer =>
      _$gGetCharactersVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GGetCharactersVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetCharactersVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GGetCharactersVars.serializer,
        json,
      );
}
