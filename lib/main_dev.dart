import 'package:flutter/material.dart';
import 'package:rick_and_morty/core/di/injection.dart';
import 'package:rick_and_morty/core/theme/app_theme.dart';
import 'package:rick_and_morty/i18n/strings.g.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // 1. Boot up the Di Container (waits for SharePreference)
  await configureDependencies();

  // 2. initialize slang
  LocaleSettings.setLocale(AppLocale.km);

  runApp(
    // Wrap your app in the TranslationProvider
    TranslationProvider(child: const MultiverseApp()),
  );
}

class MultiverseApp extends StatelessWidget {
  const MultiverseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // 1. wire up Slang localization
      locale: TranslationProvider.of(context).flutterLocale,
      supportedLocales: AppLocaleUtils.supportedLocales,
      localizationsDelegates: GlobalMaterialLocalizations.delegates,

      // 2. wire up with Serene Canvas thems
      theme: AppTheme.lightTheme,

      // darkTheme: AppTheme.dartTheme,
      home: Scaffold(
        appBar: AppBar(title: Text(t.app.title)),
        body: Center(child: Text(t.character.status.alive)),
      ),
    );
  }
}
