import 'package:flutter/material.dart';
import 'package:s2_rolldice/modules/quiz_app/data/questions.dart';
import 'package:s2_rolldice/modules/quiz_app/questions_screen.dart';
import 'package:s2_rolldice/modules/quiz_app/results_screen.dart';
import 'package:s2_rolldice/modules/quiz_app/start_screen.dart';

/// The main widget for the quiz app.
///
/// This widget is responsible for managing the state of the quiz and
/// switching between the start screen, questions screen and results screen.
class QuizApp extends StatefulWidget {
  /// Creates a new instance of the [QuizApp] widget.
  const QuizApp({super.key});

  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  /// A list of the answers selected by the user.
  List<String> selectedAnswers = [];

  /// The current screen being displayed.
  String currentScreen = 'start-screen';

  /// Switches the current screen from the start screen to the questions screen.
  void switchScreen() {
    setState(() {
      currentScreen = 'questions-screen';
    });
  }

  /// Adds the selected answer to the list of selected answers.
  ///
  /// If the number of selected answers is equal to the number of questions,
  /// the current screen is switched to the results screen.
  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        selectedAnswers = [];
        currentScreen = 'results-screen';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(switchScreen);

    if (currentScreen == 'questions-screen') {
      screenWidget = QuestionsScreen(chooseAnswer);
    }

    if (currentScreen == 'results-screen') {
      screenWidget = ResultsScreen();
    }

    return screenWidget;
  }
}
