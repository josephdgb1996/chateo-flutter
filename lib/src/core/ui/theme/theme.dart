import 'package:flutter/material.dart';

class Theme {
  Theme._();

  static ColorScheme _lightColorScheme = ColorScheme(
    brightness: brightness,
    primary: primary,
    onPrimary: onPrimary,
    secondary: secondary,
    onSecondary: onSecondary,
    error: error,
    onError: onError,
    surface: surface,
    onSurface: onSurface,
  );

  static TextTheme _lighTextTheme = TextTheme();



  static ThemeData light() => ThemeData.from(colorScheme: _lightColorScheme, textTheme: _lighTextTheme);
}
