import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class SettingsLocalDataSource {
  String getTheme();
  Future<void> setTheme(String theme);
  String getLanguage();
  Future<void> setLaguage(String laguage);
}

@LazySingleton(as: SettingsLocalDataSource)
class SettingsLocalDataSourceImpl implements SettingsLocalDataSource {
  final SharedPreferences _prefs;
  static const _themeKey = 'app_theme';
  static const _languageKey = 'app_language';

  SettingsLocalDataSourceImpl(this._prefs);
  @override
  String getTheme() => _prefs.getString(_themeKey) ?? 'system';
  @override
  Future<void> setTheme(String theme) async {
    await _prefs.setString(_themeKey, theme);
  }

  @override
  String getLanguage() => _prefs.getString(_languageKey) ?? 'en';
  @override
  Future<void> setLaguage(String laguage) async {
    await _prefs.setString(_languageKey, laguage);
  }
}
