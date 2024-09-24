import 'package:app/src/core/theme/colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static const ColorScheme _lightColorScheme = ColorScheme.light(primary: AppColors.primary);

  static const TextTheme _lighTextTheme = TextTheme();

  static const ColorScheme _darkColorScheme = ColorScheme.dark(primary: AppColors.primary);

  static const TextTheme _darkTextTheme = TextTheme();

  static ThemeData light() => ThemeData.from(colorScheme: _lightColorScheme, textTheme: _lighTextTheme);
  static ThemeData dark() => ThemeData.from(colorScheme: _darkColorScheme, textTheme: _darkTextTheme);
}
