import 'package:flutter/material.dart';

/// A stateless widget that displays a centered text.
class CenteredText extends StatelessWidget {
  const CenteredText(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Text(text, style: Theme.of(context).textTheme.headlineLarge),
          Text(
            'What\'s your favorite food?',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ],
      ),
    );
  }
}
