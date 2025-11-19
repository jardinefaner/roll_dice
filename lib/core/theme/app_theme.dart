import 'package:flutter/material.dart';
import 'package:s2_rolldice/core/theme/color_schemes.dart';
import 'package:s2_rolldice/core/theme/text_theme.dart';

/// A class that provides the application's themes.
class AppTheme {
  /// The light theme for the application.
  static ThemeData lightTheme = ThemeData.light(useMaterial3: true).copyWith(
    brightness: Brightness.light,
    colorScheme: AppColorSchemes.lightColorScheme,
    textTheme: AppTextThemes.lightTextTheme,
    // elevatedButtonTheme: _elevatedButtonThemeDataLight(),
  );

  /// The dark theme for the application.
  static ThemeData darkTheme = ThemeData.dark(useMaterial3: true).copyWith(
    brightness: Brightness.dark,
    colorScheme: AppColorSchemes.darkColorScheme,
    textTheme: AppTextThemes.darkTextTheme,
    // elevatedButtonTheme: _elevatedButtonThemeDataDark(),
  );
}

// ElevatedButtonThemeData _elevatedButtonThemeDataLight() {
//   return ElevatedButtonThemeData(
//     style: ElevatedButton.styleFrom(
//       backgroundColor: AppColorSchemes.lightColorScheme.primary,
//       foregroundColor: AppColorSchemes.lightColorScheme.onPrimary,
//     ),
//   );
// }
//
// ElevatedButtonThemeData _elevatedButtonThemeDataDark() {
//   return ElevatedButtonThemeData(
//     style: ElevatedButton.styleFrom(
//       backgroundColor: AppColorSchemes.darkColorScheme.tertiary,
//       foregroundColor: AppColorSchemes.darkColorScheme.onPrimary,
//     ),
//   );
// }
