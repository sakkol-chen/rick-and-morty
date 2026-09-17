import 'package:flutter/material.dart';
import 'package:rick_and_morty/core/di/injection.dart';
import 'core/theme/app_theme.dart'; // Your refactored AppTheme
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
    return MaterialApp.router(
      title: 'Multiverse Explorer',
      theme: AppTheme.lightTheme,
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false, // Hides the annoying debug banner
    );
  }
}
