import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:rick_and_morty/features/settings/data/datasources/settings_local_datasource.dart';

// ------ Event ---------------
sealed class SettingsEvent {}

class LoadSettingsEvent extends SettingsEvent {}

class ChangeThemeEvent extends SettingsEvent {
  final ThemeMode themeMode;
  ChangeThemeEvent(this.themeMode);
}

class ChangeLanguageEvent extends SettingsEvent {
  final String languageCode;
  ChangeLanguageEvent(this.languageCode);
}

// ----- State --------------

class SettingsState {
  final ThemeMode themeMode;
  final String languageCode;
  const SettingsState({
    this.languageCode = 'en',
    this.themeMode = ThemeMode.system,
  });

  SettingsState copyWith({ThemeMode? themeMode, String? languageCode}) {
    return SettingsState(
      themeMode: themeMode ?? this.themeMode,
      languageCode: languageCode ?? this.languageCode,
    );
  }
}

@injectable
class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  final SettingsLocalDataSource _settingsLocalDataSource;

  SettingsBloc(this._settingsLocalDataSource) : super(const SettingsState()) {
    on<LoadSettingsEvent>((event, emit) {
      final savedTheme = _settingsLocalDataSource.getTheme();
      final savedLanguage = _settingsLocalDataSource.getLanguage();

      emit(
        SettingsState(
          themeMode: _parseThemeMode(savedTheme),
          languageCode: savedLanguage,
        ),
      );
    });
    on<ChangeThemeEvent>((event, emit) async {
      await _settingsLocalDataSource.setTheme(event.themeMode.name);
      emit(SettingsState(themeMode: event.themeMode));
    });
    on<ChangeLanguageEvent>((event, emit) async {
      await _settingsLocalDataSource.setLaguage(event.languageCode);
      emit(SettingsState(languageCode: event.languageCode));
    });
  }

  ThemeMode _parseThemeMode(String theme) {
    switch (theme) {
      case 'light':
        return ThemeMode.light;
      case 'dark':
        return ThemeMode.dark;
      default:
        return ThemeMode.system;
    }
  }
}
