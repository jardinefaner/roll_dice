import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// A class that provides the application's text themes.
class AppTextThemes {
  /// Builds a text theme from a base text theme.
  static TextTheme _buildTextTheme(TextTheme base) {
    final textStyle = GoogleFonts.merriweatherSans();
    return base.copyWith(
      bodyLarge: base.bodyLarge?.copyWith(fontFamily: textStyle.fontFamily),
      bodyMedium: base.bodyMedium?.copyWith(fontFamily: textStyle.fontFamily),
      bodySmall: base.bodySmall?.copyWith(fontFamily: textStyle.fontFamily),
    );
  }

  /// The light text theme for the application.
  static TextTheme lightTextTheme = _buildTextTheme(
    GoogleFonts.merriweatherTextTheme(ThemeData.light().textTheme),
  );

  /// The dark text theme for the application.
  static TextTheme darkTextTheme = _buildTextTheme(
    GoogleFonts.merriweatherTextTheme(ThemeData.dark().textTheme),
  );
}
