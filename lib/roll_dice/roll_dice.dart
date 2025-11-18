import 'package:flutter/material.dart';
import 'package:s2_rolldice/roll_dice/centered_text.dart';

class RollDice extends StatelessWidget {
  const RollDice({super.key});
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
      child: CenteredText('Hey, there!'),
    );
  }
}
