import 'package:flutter_template/features/f_auth/presentation/screens/auth.dart';
import 'package:go_router/go_router.dart';

import '../../features/f_home/presentation/screens/home.dart';
import 'routes.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: Routes.home,
  routes: [
    GoRoute(
      path: Routes.home,
      builder: (context, state) => const ThemeTestScreen(),
    ),
    GoRoute(
      path: Routes.themeTest,
      builder: (context, state) => const ThemeAuthTestScreen(),
    ),
    // add more routes here
  ],
);
