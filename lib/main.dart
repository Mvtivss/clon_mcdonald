import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mcdonalds_aplication/config/router/app_router.dart';
import 'package:mcdonalds_aplication/config/theme/app_theme.dart';
import 'package:mcdonalds_aplication/presentation/providers/state_providers.dart';

void main() => runApp(const ProviderScope(child: MyApp()));

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDarkMode = ref.watch(darkModeProvider);
    return MaterialApp.router(
      routerConfig: appRoute,
      debugShowCheckedModeBanner: false,
      title: 'Mc Mati',
      theme: AppTheme(selectedColor: 9, isDarkmode: isDarkMode).getTheme(),
    );
  }
}
