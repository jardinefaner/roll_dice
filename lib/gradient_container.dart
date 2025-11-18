import 'package:flutter/material.dart';
import 'package:s2_rolldice/centered_text.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: RadialGradient(
          radius: 4,
          colors: [
            Theme.of(context).colorScheme.surfaceContainer,
            Theme.of(context).colorScheme.surfaceDim,
          ],
        ),
      ),
      child: CenteredText('Hey, there!')
    );
  }
}
