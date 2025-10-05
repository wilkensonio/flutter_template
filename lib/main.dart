import 'package:flutter/material.dart';

import 'core/routing/r_app_router.dart';
import 'core/theme/t_app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: ThemeMode.light,
      // home: const ThemeTestScreen(),
      routerConfig: appRouter,
    );
  }
}
