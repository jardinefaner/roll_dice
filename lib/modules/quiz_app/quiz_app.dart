import 'package:flutter/material.dart';

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 80,
        children: [
          Image.asset('assets/quiz-logo.png', width: 250),
          Text(
            'Learn Flutter the fun way!',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          TextButton(
            onPressed: null,
            child: Text(
              'Start Quiz',
              style: Theme.of(context).textTheme.labelLarge,
            ),
          ),
        ],
      ),
    );
  }
}
