import 'package:flutter/material.dart';
import 'package:knucklebones/widgets/dice_box.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: DiceBox(value: 6)
      ),
    );
  }
}