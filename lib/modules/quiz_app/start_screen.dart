import 'package:flutter/material.dart';

/// The start screen of the quiz app.
///
/// This screen is displayed when the app is first launched. It contains
/// a logo, a title, and a button to start the quiz.
class StartScreen extends StatelessWidget {
  /// Creates a new instance of the [StartScreen] widget.
  ///
  /// The [startQuiz] parameter is a function that is called when the
  /// "Start Quiz" button is pressed.
  const StartScreen(this.startQuiz, {super.key});

  /// The function to call when the "Start Quiz" button is pressed.
  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/quiz-logo.png',
            width: 250,
            color: Theme.of(context).colorScheme.onSurfaceVariant,
          ),
          const SizedBox(height: 80),
          Text(
            'Learn Flutter the fun way!',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: 30),
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
