import 'package:flutter/material.dart';
import 'package:knucklebones/widgets/dice_board.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: DiceBoard(
          board: [
            [1, 2, 3],
            [4, 5, 6],
            [1, 2, 3],
          ],
        ),
      ),
    );
  }
}
