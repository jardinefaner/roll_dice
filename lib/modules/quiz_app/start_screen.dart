import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 80,
        children: [
          Image.asset(
            'assets/quiz-logo.png',
            width: 250,
            color: Theme.of(context).colorScheme.onSurfaceVariant,
          ),
          // Image.asset('assets/quiz-logo.png')
          // Opacity(
          //   opacity: 0.5,
          //   child: Image.asset('assets/quiz-logo.png', width: 250),
          // ),
          Text(
            'Learn Flutter the fun way!',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          OutlinedButton.icon(
            onPressed: startQuiz,
            icon: Icon(
              Icons.arrow_right_alt,
              color: Theme.of(context).colorScheme.onSurface,
            ),
            label: Text(
              'Start Quiz',
              style: Theme.of(context).textTheme.labelLarge,
            ),
          ),
        ],
      ),
    );
  }
}
