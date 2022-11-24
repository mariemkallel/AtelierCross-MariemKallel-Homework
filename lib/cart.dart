import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:myapp/cell_cart.dart';

import 'game.dart';

class Cart extends StatefulWidget {
  Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  //var
  final List<Game> games = [
    Game("dmc5.jpg", "Devil May Cry 5", 200),
    Game("fifa.jpg", "Fifa 22", 220),
    Game("nfs.jpg", "Need For Speed", 100),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
          itemCount: games.length,
          itemBuilder: (context, index) {
            return CellCart(games[index]);
          }),
    );
  }
}
