import 'package:go_router/go_router.dart';
import 'package:mcdonalds_aplication/presentation/screens/config/config_screen.dart';
import 'package:mcdonalds_aplication/presentation/screens/home/home_screen.dart';

// GoRouter configuration
final appRoute = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/Config',
      builder: (context, state) => const ConfigScreen(),
    ),
  ],
);
