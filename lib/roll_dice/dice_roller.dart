import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {

  final Random randomizer = Random();

  String activeDiceImage1 = 'assets/dice-images/dice-1.png';
  String activeDiceImage2 = 'assets/dice-images/dice-1.png';

  void rollDice() {
    setState(() {
      int dice1 = randomizer.nextInt(6) + 1;
      int dice2 = randomizer.nextInt(6) + 1;
      activeDiceImage1 = 'assets/dice-images/dice-$dice1.png';
      activeDiceImage2 = 'assets/dice-images/dice-$dice2.png';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: [
              Image.asset(activeDiceImage1, width: 200),
              Image.asset(activeDiceImage2, width: 200),
            ],
          ),
          OutlinedButton(
            onPressed: rollDice,
            style: OutlinedButton.styleFrom(
              elevation: 1,
              padding: EdgeInsets.all(48),
            ),
            child: Text(
              'Roll Dice...',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          ),
        ],
      ),
    );
  }
}
