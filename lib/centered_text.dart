import 'package:flutter/material.dart';

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
          Text(
            text,
            style: Theme.of(context).textTheme.headlineLarge!.copyWith(),
          ),
        ],
      ),
    );
  }
}
