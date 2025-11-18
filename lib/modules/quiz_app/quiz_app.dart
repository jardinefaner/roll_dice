import 'package:flutter/material.dart';
import 'package:s2_rolldice/modules/quiz_app/questions_screen.dart';
import 'package:s2_rolldice/modules/quiz_app/start_screen.dart';

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});

  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  String currentScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      currentScreen = 'questions-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    return currentScreen == 'start-screen'
        ? StartScreen(switchScreen)
        : QuestionsScreen();
  }
}
