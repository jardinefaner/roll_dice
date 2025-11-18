import 'package:flutter/material.dart';
import 'package:s2_rolldice/roll_dice/dice_roller.dart';

class RollDice extends StatelessWidget {
  RollDice({super.key});



  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: RadialGradient(
          radius: 4,
          colors: [
            Theme.of(context).colorScheme.surfaceContainer,
            Theme.of(context).colorScheme.surfaceBright,
          ],
        ),
      ),
      child: DiceRoller(),
    );
  }
}
