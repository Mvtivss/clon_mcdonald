import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:mcdonalds_aplication/presentation/providers/navigation_bar_provider.dart';
import 'package:mcdonalds_aplication/presentation/providers/state_providers.dart';

class MyAccountView extends ConsumerWidget {
  const MyAccountView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDarkMode = ref.watch(darkModeProvider);
    final index = ref.watch(selectedIndexProvider);

    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Card(
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Hola Matias $index',
                    style: TextStyle(
                        color:
                            isDarkMode == true ? Colors.white : Colors.black),
                  ),
                  Image.asset(
                    'assets/codigoqr.png',
                    height: 70,
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Perfil',
                      style: TextStyle(
                          color:
                              isDarkMode == true ? Colors.white : Colors.black),
                    )),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Mis Cupones',
                      style: TextStyle(
                          color:
                              isDarkMode == true ? Colors.white : Colors.black),
                    )),
                TextButton(
                    onPressed: () {
                      /*  Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const ConfigScreen(),
                        ),
                      ); */
                      context.push('/Config');
                    },
                    child: Text(
                      'Configuracion',
                      style: TextStyle(
                          color:
                              isDarkMode == true ? Colors.white : Colors.black),
                    )),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Metodos de pago',
                      style: TextStyle(
                          color:
                              isDarkMode == true ? Colors.white : Colors.black),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
