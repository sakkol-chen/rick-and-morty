import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:rick_and_morty/core/di/injection.dart';
import 'package:rick_and_morty/core/theme/serene_canvas_theme.dart';
import 'package:rick_and_morty/features/settings/presentation/bloc/settings_bloc.dart'; // Your refactored AppTheme
import 'core/router/app_router.dart';

void main() async {
  // Required if we do any async work before runApp
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize GetIt (The DI Container)
  await configureDependencies();

  runApp(const MultiverseApp());
}

class MultiverseApp extends StatelessWidget {
  const MultiverseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => GetIt.instance<SettingsBloc>()..add(LoadSettingsEvent()),
      child: BlocBuilder<SettingsBloc, SettingsState>(
        builder: (context, state) {
          return MaterialApp.router(
            title: 'Multiverse Explorer',
            themeMode: state.themeMode,
            theme: SereneCanvasTheme.light,
            darkTheme: SereneCanvasTheme.dark,
            routerConfig: appRouter,
            debugShowCheckedModeBanner:
                false, // Hides the annoying debug banner
          );
        },
      ),
    );
  }
}
