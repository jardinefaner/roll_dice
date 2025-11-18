import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:s2_rolldice/core/theme/app_theme.dart';
import 'package:s2_rolldice/modules/quiz_app/quiz_app.dart';
import 'package:s2_rolldice/modules/roll_dice/roll_dice.dart';

/// The entry point of the application.
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
  runApp(const MyApp());
}

/// The root widget of the application.
///
class MyApp extends StatelessWidget {
  /// Creates a new instance of the [MyApp] widget.
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Roll Dice',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

/// The home page of the application.
class HomePage extends StatelessWidget {
  /// Creates a new instance of the [HomePage] widget.
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return RotatedBox(
      quarterTurns: 2,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Theme.of(context).colorScheme.surfaceContainer,
              Theme.of(context).colorScheme.surfaceContainerHighest,
            ],
          ),
        ),
        child: Scaffold(backgroundColor: Colors.transparent, body: QuizApp()),
      ),
    );
  }
}
