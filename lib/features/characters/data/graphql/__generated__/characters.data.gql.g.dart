// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'characters.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetCharactersData> _$gGetCharactersDataSerializer =
    _$GGetCharactersDataSerializer();
Serializer<GGetCharactersData_characters>
_$gGetCharactersDataCharactersSerializer =
    _$GGetCharactersData_charactersSerializer();
Serializer<GGetCharactersData_characters_info>
_$gGetCharactersDataCharactersInfoSerializer =
    _$GGetCharactersData_characters_infoSerializer();
Serializer<GGetCharactersData_characters_results>
_$gGetCharactersDataCharactersResultsSerializer =
    _$GGetCharactersData_characters_resultsSerializer();
Serializer<GGetCharactersData_characters_results_origin>
_$gGetCharactersDataCharactersResultsOriginSerializer =
    _$GGetCharactersData_characters_results_originSerializer();
Serializer<GGetCharactersData_characters_results_location>
_$gGetCharactersDataCharactersResultsLocationSerializer =
    _$GGetCharactersData_characters_results_locationSerializer();

class _$GGetCharactersDataSerializer
    implements StructuredSerializer<GGetCharactersData> {
  @override
  final Iterable<Type> types = const [GGetCharactersData, _$GGetCharactersData];
  @override
  final String wireName = 'GGetCharactersData';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GGetCharactersData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(
        object.G__typename,
        specifiedType: const FullType(String),
      ),
    ];
    Object? value;
    value = object.characters;
    if (value != null) {
      result
        ..add('characters')
        ..add(
          serializers.serialize(
            value,
            specifiedType: const FullType(GGetCharactersData_characters),
          ),
        );
    }
    return result;
  }

  @override
  GGetCharactersData deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GGetCharactersDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
        case 'characters':
          result.characters.replace(
            serializers.deserialize(
                  value,
                  specifiedType: const FullType(GGetCharactersData_characters),
                )!
                as GGetCharactersData_characters,
          );
          break;
      }
    }

    return result.build();
  }
}

class _$GGetCharactersData_charactersSerializer
    implements StructuredSerializer<GGetCharactersData_characters> {
  @override
  final Iterable<Type> types = const [
    GGetCharactersData_characters,
    _$GGetCharactersData_characters,
  ];
  @override
  final String wireName = 'GGetCharactersData_characters';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GGetCharactersData_characters object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(
        object.G__typename,
        specifiedType: const FullType(String),
      ),
    ];
    Object? value;
    value = object.info;
    if (value != null) {
      result
        ..add('info')
        ..add(
          serializers.serialize(
            value,
            specifiedType: const FullType(GGetCharactersData_characters_info),
          ),
        );
    }
    value = object.results;
    if (value != null) {
      result
        ..add('results')
        ..add(
          serializers.serialize(
            value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(GGetCharactersData_characters_results),
            ]),
          ),
        );
    }
    return result;
  }

  @override
  GGetCharactersData_characters deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GGetCharactersData_charactersBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
        case 'info':
          result.info.replace(
            serializers.deserialize(
                  value,
                  specifiedType: const FullType(
                    GGetCharactersData_characters_info,
                  ),
                )!
                as GGetCharactersData_characters_info,
          );
          break;
        case 'results':
          result.results.replace(
            serializers.deserialize(
                  value,
                  specifiedType: const FullType(BuiltList, const [
                    const FullType.nullable(
                      GGetCharactersData_characters_results,
                    ),
                  ]),
                )!
                as BuiltList<Object?>,
          );
          break;
      }
    }

    return result.build();
  }
}

class _$GGetCharactersData_characters_infoSerializer
    implements StructuredSerializer<GGetCharactersData_characters_info> {
  @override
  final Iterable<Type> types = const [
    GGetCharactersData_characters_info,
    _$GGetCharactersData_characters_info,
  ];
  @override
  final String wireName = 'GGetCharactersData_characters_info';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GGetCharactersData_characters_info object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(
        object.G__typename,
        specifiedType: const FullType(String),
      ),
    ];
    Object? value;
    value = object.count;
    if (value != null) {
      result
        ..add('count')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.pages;
    if (value != null) {
      result
        ..add('pages')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.next;
    if (value != null) {
      result
        ..add('next')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.prev;
    if (value != null) {
      result
        ..add('prev')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GGetCharactersData_characters_info deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GGetCharactersData_characters_infoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
        case 'count':
          result.count =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int?;
          break;
        case 'pages':
          result.pages =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int?;
          break;
        case 'next':
          result.next =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int?;
          break;
        case 'prev':
          result.prev =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$GGetCharactersData_characters_resultsSerializer
    implements StructuredSerializer<GGetCharactersData_characters_results> {
  @override
  final Iterable<Type> types = const [
    GGetCharactersData_characters_results,
    _$GGetCharactersData_characters_results,
  ];
  @override
  final String wireName = 'GGetCharactersData_characters_results';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GGetCharactersData_characters_results object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(
        object.G__typename,
        specifiedType: const FullType(String),
      ),
    ];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(
          serializers.serialize(value, specifiedType: const FullType(String)),
        );
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(
          serializers.serialize(value, specifiedType: const FullType(String)),
        );
    }
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(
          serializers.serialize(value, specifiedType: const FullType(String)),
        );
    }
    value = object.species;
    if (value != null) {
      result
        ..add('species')
        ..add(
          serializers.serialize(value, specifiedType: const FullType(String)),
        );
    }
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(
          serializers.serialize(value, specifiedType: const FullType(String)),
        );
    }
    value = object.gender;
    if (value != null) {
      result
        ..add('gender')
        ..add(
          serializers.serialize(value, specifiedType: const FullType(String)),
        );
    }
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(
          serializers.serialize(value, specifiedType: const FullType(String)),
        );
    }
    value = object.origin;
    if (value != null) {
      result
        ..add('origin')
        ..add(
          serializers.serialize(
            value,
            specifiedType: const FullType(
              GGetCharactersData_characters_results_origin,
            ),
          ),
        );
    }
    value = object.location;
    if (value != null) {
      result
        ..add('location')
        ..add(
          serializers.serialize(
            value,
            specifiedType: const FullType(
              GGetCharactersData_characters_results_location,
            ),
          ),
        );
    }
    return result;
  }

  @override
  GGetCharactersData_characters_results deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GGetCharactersData_characters_resultsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
        case 'id':
          result.id =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String?;
          break;
        case 'name':
          result.name =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String?;
          break;
        case 'status':
          result.status =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String?;
          break;
        case 'species':
          result.species =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String?;
          break;
        case 'type':
          result.type =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String?;
          break;
        case 'gender':
          result.gender =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String?;
          break;
        case 'image':
          result.image =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String?;
          break;
        case 'origin':
          result.origin.replace(
            serializers.deserialize(
                  value,
                  specifiedType: const FullType(
                    GGetCharactersData_characters_results_origin,
                  ),
                )!
                as GGetCharactersData_characters_results_origin,
          );
          break;
        case 'location':
          result.location.replace(
            serializers.deserialize(
                  value,
                  specifiedType: const FullType(
                    GGetCharactersData_characters_results_location,
                  ),
                )!
                as GGetCharactersData_characters_results_location,
          );
          break;
      }
    }

    return result.build();
  }
}

class _$GGetCharactersData_characters_results_originSerializer
    implements
        StructuredSerializer<GGetCharactersData_characters_results_origin> {
  @override
  final Iterable<Type> types = const [
    GGetCharactersData_characters_results_origin,
    _$GGetCharactersData_characters_results_origin,
  ];
  @override
  final String wireName = 'GGetCharactersData_characters_results_origin';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GGetCharactersData_characters_results_origin object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(
        object.G__typename,
        specifiedType: const FullType(String),
      ),
    ];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(
          serializers.serialize(value, specifiedType: const FullType(String)),
        );
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(
          serializers.serialize(value, specifiedType: const FullType(String)),
        );
    }
    return result;
  }

  @override
  GGetCharactersData_characters_results_origin deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GGetCharactersData_characters_results_originBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
        case 'id':
          result.id =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String?;
          break;
        case 'name':
          result.name =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GGetCharactersData_characters_results_locationSerializer
    implements
        StructuredSerializer<GGetCharactersData_characters_results_location> {
  @override
  final Iterable<Type> types = const [
    GGetCharactersData_characters_results_location,
    _$GGetCharactersData_characters_results_location,
  ];
  @override
  final String wireName = 'GGetCharactersData_characters_results_location';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GGetCharactersData_characters_results_location object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(
        object.G__typename,
        specifiedType: const FullType(String),
      ),
    ];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(
          serializers.serialize(value, specifiedType: const FullType(String)),
        );
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(
          serializers.serialize(value, specifiedType: const FullType(String)),
        );
    }
    return result;
  }

  @override
  GGetCharactersData_characters_results_location deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GGetCharactersData_characters_results_locationBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
        case 'id':
          result.id =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String?;
          break;
        case 'name':
          result.name =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GGetCharactersData extends GGetCharactersData {
  @override
  final String G__typename;
  @override
  final GGetCharactersData_characters? characters;

  factory _$GGetCharactersData([
    void Function(GGetCharactersDataBuilder)? updates,
  ]) => (GGetCharactersDataBuilder()..update(updates))._build();

  _$GGetCharactersData._({required this.G__typename, this.characters})
    : super._();
  @override
  GGetCharactersData rebuild(
    void Function(GGetCharactersDataBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GGetCharactersDataBuilder toBuilder() =>
      GGetCharactersDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetCharactersData &&
        G__typename == other.G__typename &&
        characters == other.characters;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, characters.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GGetCharactersData')
          ..add('G__typename', G__typename)
          ..add('characters', characters))
        .toString();
  }
}

class GGetCharactersDataBuilder
    implements Builder<GGetCharactersData, GGetCharactersDataBuilder> {
  _$GGetCharactersData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GGetCharactersData_charactersBuilder? _characters;
  GGetCharactersData_charactersBuilder get characters =>
      _$this._characters ??= GGetCharactersData_charactersBuilder();
  set characters(GGetCharactersData_charactersBuilder? characters) =>
      _$this._characters = characters;

  GGetCharactersDataBuilder() {
    GGetCharactersData._initializeBuilder(this);
  }

  GGetCharactersDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _characters = $v.characters?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetCharactersData other) {
    _$v = other as _$GGetCharactersData;
  }

  @override
  void update(void Function(GGetCharactersDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetCharactersData build() => _build();

  _$GGetCharactersData _build() {
    _$GGetCharactersData _$result;
    try {
      _$result =
          _$v ??
          _$GGetCharactersData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
              G__typename,
              r'GGetCharactersData',
              'G__typename',
            ),
            characters: _characters?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'characters';
        _characters?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'GGetCharactersData',
          _$failedField,
          e.toString(),
        );
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetCharactersData_characters extends GGetCharactersData_characters {
  @override
  final String G__typename;
  @override
  final GGetCharactersData_characters_info? info;
  @override
  final BuiltList<GGetCharactersData_characters_results?>? results;

  factory _$GGetCharactersData_characters([
    void Function(GGetCharactersData_charactersBuilder)? updates,
  ]) => (GGetCharactersData_charactersBuilder()..update(updates))._build();

  _$GGetCharactersData_characters._({
    required this.G__typename,
    this.info,
    this.results,
  }) : super._();
  @override
  GGetCharactersData_characters rebuild(
    void Function(GGetCharactersData_charactersBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GGetCharactersData_charactersBuilder toBuilder() =>
      GGetCharactersData_charactersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetCharactersData_characters &&
        G__typename == other.G__typename &&
        info == other.info &&
        results == other.results;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, info.hashCode);
    _$hash = $jc(_$hash, results.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GGetCharactersData_characters')
          ..add('G__typename', G__typename)
          ..add('info', info)
          ..add('results', results))
        .toString();
  }
}

class GGetCharactersData_charactersBuilder
    implements
        Builder<
          GGetCharactersData_characters,
          GGetCharactersData_charactersBuilder
        > {
  _$GGetCharactersData_characters? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GGetCharactersData_characters_infoBuilder? _info;
  GGetCharactersData_characters_infoBuilder get info =>
      _$this._info ??= GGetCharactersData_characters_infoBuilder();
  set info(GGetCharactersData_characters_infoBuilder? info) =>
      _$this._info = info;

  ListBuilder<GGetCharactersData_characters_results?>? _results;
  ListBuilder<GGetCharactersData_characters_results?> get results =>
      _$this._results ??= ListBuilder<GGetCharactersData_characters_results?>();
  set results(ListBuilder<GGetCharactersData_characters_results?>? results) =>
      _$this._results = results;

  GGetCharactersData_charactersBuilder() {
    GGetCharactersData_characters._initializeBuilder(this);
  }

  GGetCharactersData_charactersBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _info = $v.info?.toBuilder();
      _results = $v.results?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetCharactersData_characters other) {
    _$v = other as _$GGetCharactersData_characters;
  }

  @override
  void update(void Function(GGetCharactersData_charactersBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetCharactersData_characters build() => _build();

  _$GGetCharactersData_characters _build() {
    _$GGetCharactersData_characters _$result;
    try {
      _$result =
          _$v ??
          _$GGetCharactersData_characters._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
              G__typename,
              r'GGetCharactersData_characters',
              'G__typename',
            ),
            info: _info?.build(),
            results: _results?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'info';
        _info?.build();
        _$failedField = 'results';
        _results?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'GGetCharactersData_characters',
          _$failedField,
          e.toString(),
        );
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetCharactersData_characters_info
    extends GGetCharactersData_characters_info {
  @override
  final String G__typename;
  @override
  final int? count;
  @override
  final int? pages;
  @override
  final int? next;
  @override
  final int? prev;

  factory _$GGetCharactersData_characters_info([
    void Function(GGetCharactersData_characters_infoBuilder)? updates,
  ]) => (GGetCharactersData_characters_infoBuilder()..update(updates))._build();

  _$GGetCharactersData_characters_info._({
    required this.G__typename,
    this.count,
    this.pages,
    this.next,
    this.prev,
  }) : super._();
  @override
  GGetCharactersData_characters_info rebuild(
    void Function(GGetCharactersData_characters_infoBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GGetCharactersData_characters_infoBuilder toBuilder() =>
      GGetCharactersData_characters_infoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetCharactersData_characters_info &&
        G__typename == other.G__typename &&
        count == other.count &&
        pages == other.pages &&
        next == other.next &&
        prev == other.prev;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, count.hashCode);
    _$hash = $jc(_$hash, pages.hashCode);
    _$hash = $jc(_$hash, next.hashCode);
    _$hash = $jc(_$hash, prev.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GGetCharactersData_characters_info')
          ..add('G__typename', G__typename)
          ..add('count', count)
          ..add('pages', pages)
          ..add('next', next)
          ..add('prev', prev))
        .toString();
  }
}

class GGetCharactersData_characters_infoBuilder
    implements
        Builder<
          GGetCharactersData_characters_info,
          GGetCharactersData_characters_infoBuilder
        > {
  _$GGetCharactersData_characters_info? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  int? _pages;
  int? get pages => _$this._pages;
  set pages(int? pages) => _$this._pages = pages;

  int? _next;
  int? get next => _$this._next;
  set next(int? next) => _$this._next = next;

  int? _prev;
  int? get prev => _$this._prev;
  set prev(int? prev) => _$this._prev = prev;

  GGetCharactersData_characters_infoBuilder() {
    GGetCharactersData_characters_info._initializeBuilder(this);
  }

  GGetCharactersData_characters_infoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _count = $v.count;
      _pages = $v.pages;
      _next = $v.next;
      _prev = $v.prev;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetCharactersData_characters_info other) {
    _$v = other as _$GGetCharactersData_characters_info;
  }

  @override
  void update(
    void Function(GGetCharactersData_characters_infoBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  GGetCharactersData_characters_info build() => _build();

  _$GGetCharactersData_characters_info _build() {
    final _$result =
        _$v ??
        _$GGetCharactersData_characters_info._(
          G__typename: BuiltValueNullFieldError.checkNotNull(
            G__typename,
            r'GGetCharactersData_characters_info',
            'G__typename',
          ),
          count: count,
          pages: pages,
          next: next,
          prev: prev,
        );
    replace(_$result);
    return _$result;
  }
}

class _$GGetCharactersData_characters_results
    extends GGetCharactersData_characters_results {
  @override
  final String G__typename;
  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? status;
  @override
  final String? species;
  @override
  final String? type;
  @override
  final String? gender;
  @override
  final String? image;
  @override
  final GGetCharactersData_characters_results_origin? origin;
  @override
  final GGetCharactersData_characters_results_location? location;

  factory _$GGetCharactersData_characters_results([
    void Function(GGetCharactersData_characters_resultsBuilder)? updates,
  ]) => (GGetCharactersData_characters_resultsBuilder()..update(updates))
      ._build();

  _$GGetCharactersData_characters_results._({
    required this.G__typename,
    this.id,
    this.name,
    this.status,
    this.species,
    this.type,
    this.gender,
    this.image,
    this.origin,
    this.location,
  }) : super._();
  @override
  GGetCharactersData_characters_results rebuild(
    void Function(GGetCharactersData_characters_resultsBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GGetCharactersData_characters_resultsBuilder toBuilder() =>
      GGetCharactersData_characters_resultsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetCharactersData_characters_results &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        status == other.status &&
        species == other.species &&
        type == other.type &&
        gender == other.gender &&
        image == other.image &&
        origin == other.origin &&
        location == other.location;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, species.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, gender.hashCode);
    _$hash = $jc(_$hash, image.hashCode);
    _$hash = $jc(_$hash, origin.hashCode);
    _$hash = $jc(_$hash, location.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GGetCharactersData_characters_results',
          )
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('status', status)
          ..add('species', species)
          ..add('type', type)
          ..add('gender', gender)
          ..add('image', image)
          ..add('origin', origin)
          ..add('location', location))
        .toString();
  }
}

class GGetCharactersData_characters_resultsBuilder
    implements
        Builder<
          GGetCharactersData_characters_results,
          GGetCharactersData_characters_resultsBuilder
        > {
  _$GGetCharactersData_characters_results? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  String? _species;
  String? get species => _$this._species;
  set species(String? species) => _$this._species = species;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _gender;
  String? get gender => _$this._gender;
  set gender(String? gender) => _$this._gender = gender;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  GGetCharactersData_characters_results_originBuilder? _origin;
  GGetCharactersData_characters_results_originBuilder get origin =>
      _$this._origin ??= GGetCharactersData_characters_results_originBuilder();
  set origin(GGetCharactersData_characters_results_originBuilder? origin) =>
      _$this._origin = origin;

  GGetCharactersData_characters_results_locationBuilder? _location;
  GGetCharactersData_characters_results_locationBuilder get location =>
      _$this._location ??=
          GGetCharactersData_characters_results_locationBuilder();
  set location(
    GGetCharactersData_characters_results_locationBuilder? location,
  ) => _$this._location = location;

  GGetCharactersData_characters_resultsBuilder() {
    GGetCharactersData_characters_results._initializeBuilder(this);
  }

  GGetCharactersData_characters_resultsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _status = $v.status;
      _species = $v.species;
      _type = $v.type;
      _gender = $v.gender;
      _image = $v.image;
      _origin = $v.origin?.toBuilder();
      _location = $v.location?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetCharactersData_characters_results other) {
    _$v = other as _$GGetCharactersData_characters_results;
  }

  @override
  void update(
    void Function(GGetCharactersData_characters_resultsBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  GGetCharactersData_characters_results build() => _build();

  _$GGetCharactersData_characters_results _build() {
    _$GGetCharactersData_characters_results _$result;
    try {
      _$result =
          _$v ??
          _$GGetCharactersData_characters_results._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
              G__typename,
              r'GGetCharactersData_characters_results',
              'G__typename',
            ),
            id: id,
            name: name,
            status: status,
            species: species,
            type: type,
            gender: gender,
            image: image,
            origin: _origin?.build(),
            location: _location?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'origin';
        _origin?.build();
        _$failedField = 'location';
        _location?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'GGetCharactersData_characters_results',
          _$failedField,
          e.toString(),
        );
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetCharactersData_characters_results_origin
    extends GGetCharactersData_characters_results_origin {
  @override
  final String G__typename;
  @override
  final String? id;
  @override
  final String? name;

  factory _$GGetCharactersData_characters_results_origin([
    void Function(GGetCharactersData_characters_results_originBuilder)? updates,
  ]) => (GGetCharactersData_characters_results_originBuilder()..update(updates))
      ._build();

  _$GGetCharactersData_characters_results_origin._({
    required this.G__typename,
    this.id,
    this.name,
  }) : super._();
  @override
  GGetCharactersData_characters_results_origin rebuild(
    void Function(GGetCharactersData_characters_results_originBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GGetCharactersData_characters_results_originBuilder toBuilder() =>
      GGetCharactersData_characters_results_originBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetCharactersData_characters_results_origin &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GGetCharactersData_characters_results_origin',
          )
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class GGetCharactersData_characters_results_originBuilder
    implements
        Builder<
          GGetCharactersData_characters_results_origin,
          GGetCharactersData_characters_results_originBuilder
        > {
  _$GGetCharactersData_characters_results_origin? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GGetCharactersData_characters_results_originBuilder() {
    GGetCharactersData_characters_results_origin._initializeBuilder(this);
  }

  GGetCharactersData_characters_results_originBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetCharactersData_characters_results_origin other) {
    _$v = other as _$GGetCharactersData_characters_results_origin;
  }

  @override
  void update(
    void Function(GGetCharactersData_characters_results_originBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  GGetCharactersData_characters_results_origin build() => _build();

  _$GGetCharactersData_characters_results_origin _build() {
    final _$result =
        _$v ??
        _$GGetCharactersData_characters_results_origin._(
          G__typename: BuiltValueNullFieldError.checkNotNull(
            G__typename,
            r'GGetCharactersData_characters_results_origin',
            'G__typename',
          ),
          id: id,
          name: name,
        );
    replace(_$result);
    return _$result;
  }
}

class _$GGetCharactersData_characters_results_location
    extends GGetCharactersData_characters_results_location {
  @override
  final String G__typename;
  @override
  final String? id;
  @override
  final String? name;

  factory _$GGetCharactersData_characters_results_location([
    void Function(GGetCharactersData_characters_results_locationBuilder)?
    updates,
  ]) =>
      (GGetCharactersData_characters_results_locationBuilder()..update(updates))
          ._build();

  _$GGetCharactersData_characters_results_location._({
    required this.G__typename,
    this.id,
    this.name,
  }) : super._();
  @override
  GGetCharactersData_characters_results_location rebuild(
    void Function(GGetCharactersData_characters_results_locationBuilder)
    updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GGetCharactersData_characters_results_locationBuilder toBuilder() =>
      GGetCharactersData_characters_results_locationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetCharactersData_characters_results_location &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GGetCharactersData_characters_results_location',
          )
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class GGetCharactersData_characters_results_locationBuilder
    implements
        Builder<
          GGetCharactersData_characters_results_location,
          GGetCharactersData_characters_results_locationBuilder
        > {
  _$GGetCharactersData_characters_results_location? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GGetCharactersData_characters_results_locationBuilder() {
    GGetCharactersData_characters_results_location._initializeBuilder(this);
  }

  GGetCharactersData_characters_results_locationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetCharactersData_characters_results_location other) {
    _$v = other as _$GGetCharactersData_characters_results_location;
  }

  @override
  void update(
    void Function(GGetCharactersData_characters_results_locationBuilder)?
    updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  GGetCharactersData_characters_results_location build() => _build();

  _$GGetCharactersData_characters_results_location _build() {
    final _$result =
        _$v ??
        _$GGetCharactersData_characters_results_location._(
          G__typename: BuiltValueNullFieldError.checkNotNull(
            G__typename,
            r'GGetCharactersData_characters_results_location',
            'G__typename',
          ),
          id: id,
          name: name,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
