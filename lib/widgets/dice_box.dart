import 'package:flutter/material.dart';

class DiceBox extends StatelessWidget {
  const DiceBox({super.key, this.value});
  final int? value;

  static IconData _iconForValue(int value) => switch (value) {
    1 => Icons.looks_one,
    2 => Icons.looks_two,
    3 => Icons.looks_3,
    4 => Icons.looks_4,
    5 => Icons.looks_5,
    6 => Icons.looks_6,
    _ => Icons.help_outline,
  };

  @override
  Widget build(BuildContext context) {
    final diceValue = value;

    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        border: Border.all(
          width: 8,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: diceValue != null ? Icon(_iconForValue(diceValue), size: 50) : null,
    );
  }
} 