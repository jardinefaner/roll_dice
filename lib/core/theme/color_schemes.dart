import 'package:flutter/material.dart';

/// The seed color for the application's color schemes.
final Color seedColor = Colors.indigo;

/// A class that provides the application's color schemes.
class AppColorSchemes {
  /// The light color scheme for the application.
  static final lightColorScheme = ColorScheme.fromSeed(
    seedColor: seedColor,
    brightness: Brightness.light,
  );

  /// The dark color scheme for the application.
  static final darkColorScheme = ColorScheme.fromSeed(
    seedColor: seedColor,
    brightness: Brightness.dark,
  );
}
