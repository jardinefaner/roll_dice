import 'package:flutter/material.dart';
import 'package:s2_rolldice/modules/quiz_app/questions_screen.dart';
import 'package:s2_rolldice/modules/quiz_app/start_screen.dart';

/// The main widget for the quiz app.
///
/// This widget is responsible for managing the state of the quiz and
/// switching between the start screen and the questions screen.
class QuizApp extends StatefulWidget {
  /// Creates a new instance of the [QuizApp] widget.
  const QuizApp({super.key});

  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  String currentScreen = 'start-screen';

  /// Switches the current screen from the start screen to the questions screen.
  void switchScreen() {
    setState(() {
      currentScreen = 'questions-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    return currentScreen == 'start-screen'
        ? StartScreen(switchScreen)
        : const QuestionsScreen();
  }
}
