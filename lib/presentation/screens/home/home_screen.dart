import 'package:flutter/material.dart';
import 'package:mcdonalds_aplication/presentation/views/cupon_view.dart';
import 'package:mcdonalds_aplication/presentation/views/home_view.dart';
import 'package:mcdonalds_aplication/presentation/views/my_account_view.dart';
import 'package:mcdonalds_aplication/presentation/views/my_orders_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

int selectedIndex = 0;

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final screens = [
      const HomeView(),
      const CuponView(),
      const MyOrdersView(),
      const MyAccountView()
    ];

    return Scaffold(
      /* appBar: AppBar(
        title: const TextField(
          decoration: InputDecoration(hintText: 'Av. vickuña mackenna'),
        ),
      ), */
      body: IndexedStack(
        index: selectedIndex,
        children: screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        onTap: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: const Icon(Icons.home_rounded),
              label: 'Home',
              backgroundColor: colors.primary),
          BottomNavigationBarItem(
              icon: const Icon(Icons.label_outline_rounded),
              label: 'Cupones',
              backgroundColor: colors.primary),
          BottomNavigationBarItem(
              icon: const Icon(Icons.list_alt_rounded),
              label: 'Mis pedidos',
              backgroundColor: colors.primary),
          BottomNavigationBarItem(
              icon: const Icon(Icons.account_circle_rounded),
              label: 'Mi cuenta',
              backgroundColor: colors.primary)
        ],
      ),
    );
  }
}
