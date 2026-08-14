import 'package:flutter/material.dart';
import 'package:knucklebones/widgets/dice_box.dart';

enum TotalsPosition { top, bottom }

class DiceBoard extends StatelessWidget {
  const DiceBoard({
    super.key,
    required this.board,
    this.columnTotals,
    this.totalsPosition = TotalsPosition.bottom,
  });
  final List<List<int?>> board;
  final List<int>? columnTotals;
  final TotalsPosition totalsPosition;

  Widget _buildColumnTotals() {
    final totals = columnTotals;
    if (totals == null) return const SizedBox.shrink();

    return Row(
      mainAxisSize: MainAxisSize.min,
      spacing: 15,
      children: [
        for (var i = 0; i < 3; i++)
          SizedBox(
            width: 100,
            child: Center(
              child: Text('${totals[i]}',)
            )
          )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final boardWidget = Column(
      spacing: 15,
      mainAxisSize: MainAxisSize.min,
      children: [
        for (var i = 0; i < 3; i++)
          Row(
            spacing: 15,
            mainAxisSize: MainAxisSize.min,
            children: [for (var j = 0; j < 3; j++) DiceBox(value: board[i][j])],
          ),
      ],
    );

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        if (totalsPosition == TotalsPosition.top) _buildColumnTotals(),
        boardWidget,
        if (totalsPosition == TotalsPosition.bottom) _buildColumnTotals(),
      ],
    );
  }
}
