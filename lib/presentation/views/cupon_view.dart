import 'package:flutter/material.dart';
import 'package:mcdonalds_aplication/presentation/widgets/scroll_bars.dart';

class CuponView extends StatelessWidget {
  const CuponView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            AppBar(
              title: const TextField(
                decoration: InputDecoration(hintText: 'Av. vickuña mackenna'),
              ),
            ),
            const TextField(
              decoration: InputDecoration(
                  hintText: 'Buscar cupones', icon: Icon(Icons.search_rounded)),
            ),
            SizedBox(height: 280, child: CuponCarousel()),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'Este cupon es válido solamente en los restaurantes de Chile',
              style: TextStyle(fontSize: 10, color: Colors.grey),
            ),
            const CuponsSection(),
          ],
        ),
      ),
    );
  }
}

class CuponCarousel extends StatelessWidget {
  CuponCarousel({super.key});

  final List<String> cuponUrl = [
    'assets/appetecible.png',
    'assets/grandesplaceres.png',
    'assets/apasionante.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: cuponUrl.length,
      itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 1, vertical: 1),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(cuponUrl[index]),
              fit: BoxFit.fill,
            ),
          ),
        );
      },
    );
  }
}

class CuponsSection extends StatelessWidget {
  const CuponsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              child: const Text(
                'Recomendaciones para ti 🍟🍔',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            const RecomendedScrollBar(),
            const SizedBox(
              height: 15,
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: const Text(
                'Mas Vendidos',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            const MostSelledScrollBar(),
            const SizedBox(height: 20),
            Container(
              alignment: Alignment.centerLeft,
              child: const Text(
                'Más ofertas para explorar',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            const MoreOffertScrollBar()
          ],
        ),
      ),
    );
  }
}
