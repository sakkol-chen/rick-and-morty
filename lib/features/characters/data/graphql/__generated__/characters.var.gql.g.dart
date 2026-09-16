// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'characters.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetCharactersVars> _$gGetCharactersVarsSerializer =
    _$GGetCharactersVarsSerializer();

class _$GGetCharactersVarsSerializer
    implements StructuredSerializer<GGetCharactersVars> {
  @override
  final Iterable<Type> types = const [GGetCharactersVars, _$GGetCharactersVars];
  @override
  final String wireName = 'GGetCharactersVars';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GGetCharactersVars object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[];
    Object? value;
    value = object.page;
    if (value != null) {
      result
        ..add('page')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.filter;
    if (value != null) {
      result
        ..add('filter')
        ..add(
          serializers.serialize(
            value,
            specifiedType: const FullType(_i1.GFilterCharacter),
          ),
        );
    }
    return result;
  }

  @override
  GGetCharactersVars deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GGetCharactersVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'page':
          result.page =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int?;
          break;
        case 'filter':
          result.filter.replace(
            serializers.deserialize(
                  value,
                  specifiedType: const FullType(_i1.GFilterCharacter),
                )!
                as _i1.GFilterCharacter,
          );
          break;
      }
    }

    return result.build();
  }
}

class _$GGetCharactersVars extends GGetCharactersVars {
  @override
  final int? page;
  @override
  final _i1.GFilterCharacter? filter;

  factory _$GGetCharactersVars([
    void Function(GGetCharactersVarsBuilder)? updates,
  ]) => (GGetCharactersVarsBuilder()..update(updates))._build();

  _$GGetCharactersVars._({this.page, this.filter}) : super._();
  @override
  GGetCharactersVars rebuild(
    void Function(GGetCharactersVarsBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GGetCharactersVarsBuilder toBuilder() =>
      GGetCharactersVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetCharactersVars &&
        page == other.page &&
        filter == other.filter;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, page.hashCode);
    _$hash = $jc(_$hash, filter.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GGetCharactersVars')
          ..add('page', page)
          ..add('filter', filter))
        .toString();
  }
}

class GGetCharactersVarsBuilder
    implements Builder<GGetCharactersVars, GGetCharactersVarsBuilder> {
  _$GGetCharactersVars? _$v;

  int? _page;
  int? get page => _$this._page;
  set page(int? page) => _$this._page = page;

  _i1.GFilterCharacterBuilder? _filter;
  _i1.GFilterCharacterBuilder get filter =>
      _$this._filter ??= _i1.GFilterCharacterBuilder();
  set filter(_i1.GFilterCharacterBuilder? filter) => _$this._filter = filter;

  GGetCharactersVarsBuilder();

  GGetCharactersVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _page = $v.page;
      _filter = $v.filter?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetCharactersVars other) {
    _$v = other as _$GGetCharactersVars;
  }

  @override
  void update(void Function(GGetCharactersVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetCharactersVars build() => _build();

  _$GGetCharactersVars _build() {
    _$GGetCharactersVars _$result;
    try {
      _$result =
          _$v ?? _$GGetCharactersVars._(page: page, filter: _filter?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'filter';
        _filter?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'GGetCharactersVars',
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
