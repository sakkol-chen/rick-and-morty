///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import
// dart format off

import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:slang/generated.dart';
import 'strings.g.dart';

// Path: <root>
class TranslationsKm with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsKm({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  _meta = meta ?? TranslationMetadata(
		    locale: AppLocale.km,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		_meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <km>.
	final TranslationMetadata<AppLocale, Translations> _meta;
	@override TranslationMetadata<AppLocale, Translations> get $meta => _meta;

	/// Access flat map
	@override dynamic operator[](String key) => _meta.getTranslation(key);

	late final TranslationsKm _root = this; // ignore: unused_field

	@override 
	TranslationsKm $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsKm(meta: meta ?? this.$meta);

	// Translations
	@override late final _Translations$app$km app = _Translations$app$km._(_root);
	@override late final _Translations$character$km character = _Translations$character$km._(_root);
}

// Path: app
class _Translations$app$km implements Translations$app$en {
	_Translations$app$km._(this._root);

	final TranslationsKm _root; // ignore: unused_field

	// Translations
	@override String get title => 'អ្នករុករក Rick & Morty';
}

// Path: character
class _Translations$character$km implements Translations$character$en {
	_Translations$character$km._(this._root);

	final TranslationsKm _root; // ignore: unused_field

	// Translations
	@override late final _Translations$character$status$km status = _Translations$character$status$km._(_root);
}

// Path: character.status
class _Translations$character$status$km implements Translations$character$status$en {
	_Translations$character$status$km._(this._root);

	final TranslationsKm _root; // ignore: unused_field

	// Translations
	@override String get alive => 'នៅរស់';
	@override String get dead => 'ស្លាប់';
	@override String get unknown => 'មិនស្គាល់';
}

/// The flat map containing all translations for locale <km>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsKm {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'app.title' => 'អ្នករុករក Rick & Morty',
			'character.status.alive' => 'នៅរស់',
			'character.status.dead' => 'ស្លាប់',
			'character.status.unknown' => 'មិនស្គាល់',
			_ => null,
		};
	}
}
