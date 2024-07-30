import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mc Mati',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Mc Mati'),
        ),
        body: const Center(
          child: Text('Eliga su pedido'),
        ),
      ),
    );
  }
}
