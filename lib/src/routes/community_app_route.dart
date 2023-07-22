import 'package:go_router/go_router.dart';

import '../features/authentication/presentation/views/login_screen.dart';
import '../features/dashboard/presentation/views/dashboard_screen.dart';

class CommunityAppRouterConfig {
  final router = GoRouter(
    initialLocation: '/login',
    routes: [
      GoRoute(
        path: '/login',
        builder: (context, state) {
          return const LoginScreen();
        },
      ),
      GoRoute(
        path: '/dashboard',
        builder: (context, state) {
          return const DashboardScreen();
        },
      )
    ],
  );
}
