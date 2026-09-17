// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_detail.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetCharacterDetailVars> _$gGetCharacterDetailVarsSerializer =
    _$GGetCharacterDetailVarsSerializer();

class _$GGetCharacterDetailVarsSerializer
    implements StructuredSerializer<GGetCharacterDetailVars> {
  @override
  final Iterable<Type> types = const [
    GGetCharacterDetailVars,
    _$GGetCharacterDetailVars,
  ];
  @override
  final String wireName = 'GGetCharacterDetailVars';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GGetCharacterDetailVars object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GGetCharacterDetailVars deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GGetCharacterDetailVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GGetCharacterDetailVars extends GGetCharacterDetailVars {
  @override
  final String id;

  factory _$GGetCharacterDetailVars([
    void Function(GGetCharacterDetailVarsBuilder)? updates,
  ]) => (GGetCharacterDetailVarsBuilder()..update(updates))._build();

  _$GGetCharacterDetailVars._({required this.id}) : super._();
  @override
  GGetCharacterDetailVars rebuild(
    void Function(GGetCharacterDetailVarsBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GGetCharacterDetailVarsBuilder toBuilder() =>
      GGetCharacterDetailVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetCharacterDetailVars && id == other.id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'GGetCharacterDetailVars',
    )..add('id', id)).toString();
  }
}

class GGetCharacterDetailVarsBuilder
    implements
        Builder<GGetCharacterDetailVars, GGetCharacterDetailVarsBuilder> {
  _$GGetCharacterDetailVars? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  GGetCharacterDetailVarsBuilder();

  GGetCharacterDetailVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetCharacterDetailVars other) {
    _$v = other as _$GGetCharacterDetailVars;
  }

  @override
  void update(void Function(GGetCharacterDetailVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetCharacterDetailVars build() => _build();

  _$GGetCharacterDetailVars _build() {
    final _$result =
        _$v ??
        _$GGetCharacterDetailVars._(
          id: BuiltValueNullFieldError.checkNotNull(
            id,
            r'GGetCharacterDetailVars',
            'id',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
