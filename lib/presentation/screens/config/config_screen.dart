import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mcdonalds_aplication/presentation/providers/state_providers.dart';

class ConfigScreen extends ConsumerWidget {
  const ConfigScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDarkMode = ref.watch(darkModeProvider);

    return Scaffold(
        appBar: AppBar(
          title: const Text('Configuracion'),
        ),
        body: Center(
          child: IconButton(
            onPressed: () {
              ref.read(darkModeProvider.notifier).toggleDarkMode();
            },
            icon: Icon(isDarkMode
                ? Icons.dark_mode_outlined
                : Icons.light_mode_outlined),
            iconSize: 90,
          ),
        ));
  }
}
