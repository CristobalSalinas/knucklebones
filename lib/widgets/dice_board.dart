import 'package:flutter/material.dart';
import 'package:knucklebones/widgets/dice_box.dart';

class DiceBoard extends StatelessWidget {
  const DiceBoard({super.key, required this.board});
  final List<List<int?>> board;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      spacing: 15,
      children: [
        for (var i = 0; i < 3; i++)
          Row(
            mainAxisSize: MainAxisSize.min,
            spacing: 15,
            children: [for (var j = 0; j < 3; j++) DiceBox(value: board[i][j])],
          ),
      ],
    );
  }
}
