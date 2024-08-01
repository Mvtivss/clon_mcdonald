import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
      padding: const EdgeInsets.all(5),
      child: Column(
        children: [
          AppBar(
            title: const TextField(
              decoration: InputDecoration(hintText: 'Av. vickuña mackenna'),
            ),
          ),
          const SizedBox(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: IconScrollBarImages(),
            ),
          ),
          SizedBox(
            height: 250,
            child: ImageCarousel(),
          ),
          const Row(
            children: [
              Text(
                'Disfruta de nuevo',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Spacer(),
              Icon(Icons.arrow_forward)
            ],
          ),
          const SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: OrdersPlaced(),
          ),
          SizedBox(
            height: 150,
            child: PromoCarousel(),
          )
        ],
      ),
    ));
  }
}

class IconScrollBarImages extends StatelessWidget {
  const IconScrollBarImages({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        (Image.asset(
          'assets/promos.png',
          height: 55,
        )),
        (Image.asset(
          'assets/mcombos.png',
          height: 55,
        )),
        (Image.asset(
          'assets/signature.png',
          height: 55,
        )),
        (Image.asset(
          'assets/combopollo.png',
          height: 55,
        )),
        (Image.asset(
          'assets/acompañar.png',
          height: 55,
        )),
        (Image.asset(
          'assets/burgers.png',
          height: 55,
        )),
        (Image.asset(
          'assets/postres.png',
          height: 55,
        )),
        (Image.asset(
          'assets/mcafe.png',
          height: 55,
        )),
        (Image.asset(
          'assets/drinks.png',
          height: 55,
        )),
      ],
    );
  }
}

class ImageCarousel extends StatelessWidget {
  ImageCarousel({super.key});

  final List<String> imageUrls = [
    'assets/baconchedar.jpg',
    'assets/cajitafelizmarketing.png',
    'assets/mcflurrymilo.png',
    'assets/volviomcflurry.png',
    'assets/concurso.png',
  ];

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: imageUrls.length,
      itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 1, vertical: 1),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imageUrls[index]),
              fit: BoxFit.fill,
            ),
          ),
        );
      },
    );
  }
}

class OrdersPlaced extends StatelessWidget {
  const OrdersPlaced({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Card(
          elevation: 10,
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                Row(
                  children: [
                    Image.asset(
                      'assets/bolsammc.png',
                      height: 50,
                    ),
                    const Text(
                      'Retira en Tieda ',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      '24/07/2024 09:10',
                      style: TextStyle(color: Colors.grey, fontSize: 10),
                    )
                  ],
                ),
                const Text('Avenida Vickuña mackenna',
                    style: TextStyle(fontSize: 10)),
                const Text('McCombo Grande Cuarto de libra',
                    style: TextStyle(fontSize: 10))
              ],
            ),
          ),
        ),
        Card(
          elevation: 10,
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                Row(
                  children: [
                    Image.asset(
                      'assets/bolsammc.png',
                      height: 50,
                    ),
                    const Text(
                      'Retira en Tieda ',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      '31/07/2024 14:45',
                      style: TextStyle(color: Colors.grey, fontSize: 10),
                    )
                  ],
                ),
                const Text('Avenida Vickuña mackenna',
                    style: TextStyle(fontSize: 10)),
                const Text('McCombo Bacon Cheddar McMelt 1 Carne',
                    style: TextStyle(fontSize: 10))
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class PromoCarousel extends StatelessWidget {
  PromoCarousel({super.key});

  final List<String> promoUrl = [
    'assets/delivery.png',
    'assets/mccombopro.png',
    'assets/conocemenu.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: promoUrl.length,
      itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                image: AssetImage(promoUrl[index]), fit: BoxFit.fill),
          ),
        );
      },
    );
  }
}
