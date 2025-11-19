import 'package:flutter/material.dart';
import 'package:s2_rolldice/modules/roll_dice/dice_roller.dart';

/// A stateless widget that serves as the main screen for the roll dice feature.
///
/// This widget displays a container with a [RadialGradient] background and hosts
/// the [DiceRoller] widget, which contains the core functionality of the dice

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
