import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:s2_rolldice/core/theme/app_theme.dart';
import 'package:s2_rolldice/gradient_container.dart' show GradientContainer;

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
      child: Scaffold(body: GradientContainer()),
    );
  }
}
