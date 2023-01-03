// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:gifty/widgets/itemCard.dart';

class FavouritesPage extends StatelessWidget {
  const FavouritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(
          height: 30,
        ),
        ItemCard2(name: "N°5 Chanel", price: 70),
        SizedBox(
          height: 15,
        ),
        ItemCard2(name: "Customized necklace ", price: 7),
        SizedBox(
          height: 15,
        ),
        ItemCard2(name: "Flower bouquet", price: 20),
        SizedBox(
          height: 15,
        ),
      ],
    );
  }
}
