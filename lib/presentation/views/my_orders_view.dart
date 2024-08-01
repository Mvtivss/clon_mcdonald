import 'package:flutter/material.dart';

class MyOrdersView extends StatelessWidget {
  const MyOrdersView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            AppBar(
              centerTitle: true,
              title: Image.asset(
                'assets/mciconotrans.png',
                height: 30,
              ),
            ),
            const TabBar(tabs: [
              Tab(text: 'En curso'),
              Tab(text: 'Finalizados'),
            ])
          ],
        ),
      ),
    );
  }
}
