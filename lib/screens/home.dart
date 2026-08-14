import 'package:flutter/material.dart';
import 'package:knucklebones/widgets/dice_board.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Align(
                alignment: Alignment.topCenter,
                child: DiceBoard(
                  board: [
                    [null, null, null],
                    [null, null, null],
                    [null, null, null]
                  ],
                  columnTotals: [0, 0, 0],
                  totalsPosition: TotalsPosition.bottom,
                ),
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: DiceBoard(
                  board: [
                    [null, null, null],
                    [null, null, null],
                    [null, null, null]
                  ],
                  columnTotals: [0, 0, 0],
                  totalsPosition: TotalsPosition.top,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
