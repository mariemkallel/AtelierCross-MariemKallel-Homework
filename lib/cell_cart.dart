import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/game.dart';

class CellCart extends StatelessWidget {
  //var
  final Game mGame;

  const CellCart(this.mGame, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Icon(
              Icons.delete_sweep,
              color: Colors.black,
            ),
            Image.asset(
              "Assets/${mGame.image}",
              width: 120,
            ),
            Text(
              "${mGame.price.floor().toString()} TND",
              style: const TextStyle(color: Colors.black, fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}
