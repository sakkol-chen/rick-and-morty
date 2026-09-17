// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_detail.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetCharacterDetailData> _$gGetCharacterDetailDataSerializer =
    _$GGetCharacterDetailDataSerializer();
Serializer<GGetCharacterDetailData_character>
_$gGetCharacterDetailDataCharacterSerializer =
    _$GGetCharacterDetailData_characterSerializer();
Serializer<GGetCharacterDetailData_character_origin>
_$gGetCharacterDetailDataCharacterOriginSerializer =
    _$GGetCharacterDetailData_character_originSerializer();
Serializer<GGetCharacterDetailData_character_location>
_$gGetCharacterDetailDataCharacterLocationSerializer =
    _$GGetCharacterDetailData_character_locationSerializer();
Serializer<GGetCharacterDetailData_character_episode>
_$gGetCharacterDetailDataCharacterEpisodeSerializer =
    _$GGetCharacterDetailData_character_episodeSerializer();

class _$GGetCharacterDetailDataSerializer
    implements StructuredSerializer<GGetCharacterDetailData> {
  @override
  final Iterable<Type> types = const [
    GGetCharacterDetailData,
    _$GGetCharacterDetailData,
  ];
  @override
  final String wireName = 'GGetCharacterDetailData';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GGetCharacterDetailData object, {
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
    value = object.character;
    if (value != null) {
      result
        ..add('character')
        ..add(
          serializers.serialize(
            value,
            specifiedType: const FullType(GGetCharacterDetailData_character),
          ),
        );
    }
    return result;
  }

  @override
  GGetCharacterDetailData deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GGetCharacterDetailDataBuilder();

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
        case 'character':
          result.character.replace(
            serializers.deserialize(
                  value,
                  specifiedType: const FullType(
                    GGetCharacterDetailData_character,
                  ),
                )!
                as GGetCharacterDetailData_character,
          );
          break;
      }
    }

    return result.build();
  }
}

class _$GGetCharacterDetailData_characterSerializer
    implements StructuredSerializer<GGetCharacterDetailData_character> {
  @override
  final Iterable<Type> types = const [
    GGetCharacterDetailData_character,
    _$GGetCharacterDetailData_character,
  ];
  @override
  final String wireName = 'GGetCharacterDetailData_character';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GGetCharacterDetailData_character object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(
        object.G__typename,
        specifiedType: const FullType(String),
      ),
      'episode',
      serializers.serialize(
        object.episode,
        specifiedType: const FullType(BuiltList, const [
          const FullType.nullable(GGetCharacterDetailData_character_episode),
        ]),
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
              GGetCharacterDetailData_character_origin,
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
              GGetCharacterDetailData_character_location,
            ),
          ),
        );
    }
    return result;
  }

  @override
  GGetCharacterDetailData_character deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GGetCharacterDetailData_characterBuilder();

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
                    GGetCharacterDetailData_character_origin,
                  ),
                )!
                as GGetCharacterDetailData_character_origin,
          );
          break;
        case 'location':
          result.location.replace(
            serializers.deserialize(
                  value,
                  specifiedType: const FullType(
                    GGetCharacterDetailData_character_location,
                  ),
                )!
                as GGetCharacterDetailData_character_location,
          );
          break;
        case 'episode':
          result.episode.replace(
            serializers.deserialize(
                  value,
                  specifiedType: const FullType(BuiltList, const [
                    const FullType.nullable(
                      GGetCharacterDetailData_character_episode,
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

class _$GGetCharacterDetailData_character_originSerializer
    implements StructuredSerializer<GGetCharacterDetailData_character_origin> {
  @override
  final Iterable<Type> types = const [
    GGetCharacterDetailData_character_origin,
    _$GGetCharacterDetailData_character_origin,
  ];
  @override
  final String wireName = 'GGetCharacterDetailData_character_origin';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GGetCharacterDetailData_character_origin object, {
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
    value = object.dimension;
    if (value != null) {
      result
        ..add('dimension')
        ..add(
          serializers.serialize(value, specifiedType: const FullType(String)),
        );
    }
    return result;
  }

  @override
  GGetCharacterDetailData_character_origin deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GGetCharacterDetailData_character_originBuilder();

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
        case 'dimension':
          result.dimension =
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

class _$GGetCharacterDetailData_character_locationSerializer
    implements
        StructuredSerializer<GGetCharacterDetailData_character_location> {
  @override
  final Iterable<Type> types = const [
    GGetCharacterDetailData_character_location,
    _$GGetCharacterDetailData_character_location,
  ];
  @override
  final String wireName = 'GGetCharacterDetailData_character_location';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GGetCharacterDetailData_character_location object, {
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
    value = object.dimension;
    if (value != null) {
      result
        ..add('dimension')
        ..add(
          serializers.serialize(value, specifiedType: const FullType(String)),
        );
    }
    return result;
  }

  @override
  GGetCharacterDetailData_character_location deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GGetCharacterDetailData_character_locationBuilder();

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
        case 'dimension':
          result.dimension =
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

class _$GGetCharacterDetailData_character_episodeSerializer
    implements StructuredSerializer<GGetCharacterDetailData_character_episode> {
  @override
  final Iterable<Type> types = const [
    GGetCharacterDetailData_character_episode,
    _$GGetCharacterDetailData_character_episode,
  ];
  @override
  final String wireName = 'GGetCharacterDetailData_character_episode';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GGetCharacterDetailData_character_episode object, {
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
    value = object.air_date;
    if (value != null) {
      result
        ..add('air_date')
        ..add(
          serializers.serialize(value, specifiedType: const FullType(String)),
        );
    }
    value = object.episode;
    if (value != null) {
      result
        ..add('episode')
        ..add(
          serializers.serialize(value, specifiedType: const FullType(String)),
        );
    }
    return result;
  }

  @override
  GGetCharacterDetailData_character_episode deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GGetCharacterDetailData_character_episodeBuilder();

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
        case 'air_date':
          result.air_date =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String?;
          break;
        case 'episode':
          result.episode =
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

class _$GGetCharacterDetailData extends GGetCharacterDetailData {
  @override
  final String G__typename;
  @override
  final GGetCharacterDetailData_character? character;

  factory _$GGetCharacterDetailData([
    void Function(GGetCharacterDetailDataBuilder)? updates,
  ]) => (GGetCharacterDetailDataBuilder()..update(updates))._build();

  _$GGetCharacterDetailData._({required this.G__typename, this.character})
    : super._();
  @override
  GGetCharacterDetailData rebuild(
    void Function(GGetCharacterDetailDataBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GGetCharacterDetailDataBuilder toBuilder() =>
      GGetCharacterDetailDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetCharacterDetailData &&
        G__typename == other.G__typename &&
        character == other.character;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, character.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GGetCharacterDetailData')
          ..add('G__typename', G__typename)
          ..add('character', character))
        .toString();
  }
}

class GGetCharacterDetailDataBuilder
    implements
        Builder<GGetCharacterDetailData, GGetCharacterDetailDataBuilder> {
  _$GGetCharacterDetailData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GGetCharacterDetailData_characterBuilder? _character;
  GGetCharacterDetailData_characterBuilder get character =>
      _$this._character ??= GGetCharacterDetailData_characterBuilder();
  set character(GGetCharacterDetailData_characterBuilder? character) =>
      _$this._character = character;

  GGetCharacterDetailDataBuilder() {
    GGetCharacterDetailData._initializeBuilder(this);
  }

  GGetCharacterDetailDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _character = $v.character?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetCharacterDetailData other) {
    _$v = other as _$GGetCharacterDetailData;
  }

  @override
  void update(void Function(GGetCharacterDetailDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetCharacterDetailData build() => _build();

  _$GGetCharacterDetailData _build() {
    _$GGetCharacterDetailData _$result;
    try {
      _$result =
          _$v ??
          _$GGetCharacterDetailData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
              G__typename,
              r'GGetCharacterDetailData',
              'G__typename',
            ),
            character: _character?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'character';
        _character?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'GGetCharacterDetailData',
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

class _$GGetCharacterDetailData_character
    extends GGetCharacterDetailData_character {
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
  final GGetCharacterDetailData_character_origin? origin;
  @override
  final GGetCharacterDetailData_character_location? location;
  @override
  final BuiltList<GGetCharacterDetailData_character_episode?> episode;

  factory _$GGetCharacterDetailData_character([
    void Function(GGetCharacterDetailData_characterBuilder)? updates,
  ]) => (GGetCharacterDetailData_characterBuilder()..update(updates))._build();

  _$GGetCharacterDetailData_character._({
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
    required this.episode,
  }) : super._();
  @override
  GGetCharacterDetailData_character rebuild(
    void Function(GGetCharacterDetailData_characterBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GGetCharacterDetailData_characterBuilder toBuilder() =>
      GGetCharacterDetailData_characterBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetCharacterDetailData_character &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        status == other.status &&
        species == other.species &&
        type == other.type &&
        gender == other.gender &&
        image == other.image &&
        origin == other.origin &&
        location == other.location &&
        episode == other.episode;
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
    _$hash = $jc(_$hash, episode.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GGetCharacterDetailData_character')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('status', status)
          ..add('species', species)
          ..add('type', type)
          ..add('gender', gender)
          ..add('image', image)
          ..add('origin', origin)
          ..add('location', location)
          ..add('episode', episode))
        .toString();
  }
}

class GGetCharacterDetailData_characterBuilder
    implements
        Builder<
          GGetCharacterDetailData_character,
          GGetCharacterDetailData_characterBuilder
        > {
  _$GGetCharacterDetailData_character? _$v;

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

  GGetCharacterDetailData_character_originBuilder? _origin;
  GGetCharacterDetailData_character_originBuilder get origin =>
      _$this._origin ??= GGetCharacterDetailData_character_originBuilder();
  set origin(GGetCharacterDetailData_character_originBuilder? origin) =>
      _$this._origin = origin;

  GGetCharacterDetailData_character_locationBuilder? _location;
  GGetCharacterDetailData_character_locationBuilder get location =>
      _$this._location ??= GGetCharacterDetailData_character_locationBuilder();
  set location(GGetCharacterDetailData_character_locationBuilder? location) =>
      _$this._location = location;

  ListBuilder<GGetCharacterDetailData_character_episode?>? _episode;
  ListBuilder<GGetCharacterDetailData_character_episode?> get episode =>
      _$this._episode ??=
          ListBuilder<GGetCharacterDetailData_character_episode?>();
  set episode(
    ListBuilder<GGetCharacterDetailData_character_episode?>? episode,
  ) => _$this._episode = episode;

  GGetCharacterDetailData_characterBuilder() {
    GGetCharacterDetailData_character._initializeBuilder(this);
  }

  GGetCharacterDetailData_characterBuilder get _$this {
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
      _episode = $v.episode.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetCharacterDetailData_character other) {
    _$v = other as _$GGetCharacterDetailData_character;
  }

  @override
  void update(
    void Function(GGetCharacterDetailData_characterBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  GGetCharacterDetailData_character build() => _build();

  _$GGetCharacterDetailData_character _build() {
    _$GGetCharacterDetailData_character _$result;
    try {
      _$result =
          _$v ??
          _$GGetCharacterDetailData_character._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
              G__typename,
              r'GGetCharacterDetailData_character',
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
            episode: episode.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'origin';
        _origin?.build();
        _$failedField = 'location';
        _location?.build();
        _$failedField = 'episode';
        episode.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'GGetCharacterDetailData_character',
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

class _$GGetCharacterDetailData_character_origin
    extends GGetCharacterDetailData_character_origin {
  @override
  final String G__typename;
  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? dimension;

  factory _$GGetCharacterDetailData_character_origin([
    void Function(GGetCharacterDetailData_character_originBuilder)? updates,
  ]) => (GGetCharacterDetailData_character_originBuilder()..update(updates))
      ._build();

  _$GGetCharacterDetailData_character_origin._({
    required this.G__typename,
    this.id,
    this.name,
    this.dimension,
  }) : super._();
  @override
  GGetCharacterDetailData_character_origin rebuild(
    void Function(GGetCharacterDetailData_character_originBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GGetCharacterDetailData_character_originBuilder toBuilder() =>
      GGetCharacterDetailData_character_originBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetCharacterDetailData_character_origin &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        dimension == other.dimension;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, dimension.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GGetCharacterDetailData_character_origin',
          )
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('dimension', dimension))
        .toString();
  }
}

class GGetCharacterDetailData_character_originBuilder
    implements
        Builder<
          GGetCharacterDetailData_character_origin,
          GGetCharacterDetailData_character_originBuilder
        > {
  _$GGetCharacterDetailData_character_origin? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _dimension;
  String? get dimension => _$this._dimension;
  set dimension(String? dimension) => _$this._dimension = dimension;

  GGetCharacterDetailData_character_originBuilder() {
    GGetCharacterDetailData_character_origin._initializeBuilder(this);
  }

  GGetCharacterDetailData_character_originBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _dimension = $v.dimension;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetCharacterDetailData_character_origin other) {
    _$v = other as _$GGetCharacterDetailData_character_origin;
  }

  @override
  void update(
    void Function(GGetCharacterDetailData_character_originBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  GGetCharacterDetailData_character_origin build() => _build();

  _$GGetCharacterDetailData_character_origin _build() {
    final _$result =
        _$v ??
        _$GGetCharacterDetailData_character_origin._(
          G__typename: BuiltValueNullFieldError.checkNotNull(
            G__typename,
            r'GGetCharacterDetailData_character_origin',
            'G__typename',
          ),
          id: id,
          name: name,
          dimension: dimension,
        );
    replace(_$result);
    return _$result;
  }
}

class _$GGetCharacterDetailData_character_location
    extends GGetCharacterDetailData_character_location {
  @override
  final String G__typename;
  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? dimension;

  factory _$GGetCharacterDetailData_character_location([
    void Function(GGetCharacterDetailData_character_locationBuilder)? updates,
  ]) => (GGetCharacterDetailData_character_locationBuilder()..update(updates))
      ._build();

  _$GGetCharacterDetailData_character_location._({
    required this.G__typename,
    this.id,
    this.name,
    this.dimension,
  }) : super._();
  @override
  GGetCharacterDetailData_character_location rebuild(
    void Function(GGetCharacterDetailData_character_locationBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GGetCharacterDetailData_character_locationBuilder toBuilder() =>
      GGetCharacterDetailData_character_locationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetCharacterDetailData_character_location &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        dimension == other.dimension;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, dimension.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GGetCharacterDetailData_character_location',
          )
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('dimension', dimension))
        .toString();
  }
}

class GGetCharacterDetailData_character_locationBuilder
    implements
        Builder<
          GGetCharacterDetailData_character_location,
          GGetCharacterDetailData_character_locationBuilder
        > {
  _$GGetCharacterDetailData_character_location? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _dimension;
  String? get dimension => _$this._dimension;
  set dimension(String? dimension) => _$this._dimension = dimension;

  GGetCharacterDetailData_character_locationBuilder() {
    GGetCharacterDetailData_character_location._initializeBuilder(this);
  }

  GGetCharacterDetailData_character_locationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _dimension = $v.dimension;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetCharacterDetailData_character_location other) {
    _$v = other as _$GGetCharacterDetailData_character_location;
  }

  @override
  void update(
    void Function(GGetCharacterDetailData_character_locationBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  GGetCharacterDetailData_character_location build() => _build();

  _$GGetCharacterDetailData_character_location _build() {
    final _$result =
        _$v ??
        _$GGetCharacterDetailData_character_location._(
          G__typename: BuiltValueNullFieldError.checkNotNull(
            G__typename,
            r'GGetCharacterDetailData_character_location',
            'G__typename',
          ),
          id: id,
          name: name,
          dimension: dimension,
        );
    replace(_$result);
    return _$result;
  }
}

class _$GGetCharacterDetailData_character_episode
    extends GGetCharacterDetailData_character_episode {
  @override
  final String G__typename;
  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? air_date;
  @override
  final String? episode;

  factory _$GGetCharacterDetailData_character_episode([
    void Function(GGetCharacterDetailData_character_episodeBuilder)? updates,
  ]) => (GGetCharacterDetailData_character_episodeBuilder()..update(updates))
      ._build();

  _$GGetCharacterDetailData_character_episode._({
    required this.G__typename,
    this.id,
    this.name,
    this.air_date,
    this.episode,
  }) : super._();
  @override
  GGetCharacterDetailData_character_episode rebuild(
    void Function(GGetCharacterDetailData_character_episodeBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GGetCharacterDetailData_character_episodeBuilder toBuilder() =>
      GGetCharacterDetailData_character_episodeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetCharacterDetailData_character_episode &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        air_date == other.air_date &&
        episode == other.episode;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, air_date.hashCode);
    _$hash = $jc(_$hash, episode.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GGetCharacterDetailData_character_episode',
          )
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('air_date', air_date)
          ..add('episode', episode))
        .toString();
  }
}

class GGetCharacterDetailData_character_episodeBuilder
    implements
        Builder<
          GGetCharacterDetailData_character_episode,
          GGetCharacterDetailData_character_episodeBuilder
        > {
  _$GGetCharacterDetailData_character_episode? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _air_date;
  String? get air_date => _$this._air_date;
  set air_date(String? air_date) => _$this._air_date = air_date;

  String? _episode;
  String? get episode => _$this._episode;
  set episode(String? episode) => _$this._episode = episode;

  GGetCharacterDetailData_character_episodeBuilder() {
    GGetCharacterDetailData_character_episode._initializeBuilder(this);
  }

  GGetCharacterDetailData_character_episodeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _air_date = $v.air_date;
      _episode = $v.episode;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetCharacterDetailData_character_episode other) {
    _$v = other as _$GGetCharacterDetailData_character_episode;
  }

  @override
  void update(
    void Function(GGetCharacterDetailData_character_episodeBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  GGetCharacterDetailData_character_episode build() => _build();

  _$GGetCharacterDetailData_character_episode _build() {
    final _$result =
        _$v ??
        _$GGetCharacterDetailData_character_episode._(
          G__typename: BuiltValueNullFieldError.checkNotNull(
            G__typename,
            r'GGetCharacterDetailData_character_episode',
            'G__typename',
          ),
          id: id,
          name: name,
          air_date: air_date,
          episode: episode,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
