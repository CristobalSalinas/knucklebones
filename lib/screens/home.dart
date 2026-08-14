import 'package:flutter/material.dart';
import 'package:knucklebones/widgets/dice_board.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<List<int?>> firstPlayerBoard = [
    [null, null, null],
    [null, null, null],
    [null, null, null]
  ];
  List<List<int?>> secondPlayerBoard = [
    [null, null, null],
    [null, null, null],
    [null, null, null]
  ];

  void changePlayerBoardValue(int player, int row, int column, int? value) {
    // Actualizo el valor de el tablero del jugador correspondiente
    setState((){
      if (player == 1) {
        firstPlayerBoard[row][column] = value;
      } else if (player == 2) {
        secondPlayerBoard[row][column] = value;
      }
    });
  }

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
