import 'package:flutter/material.dart';

import '../constants/theme_keys.dart';

extension ContextThemeExtensions on BuildContext {
  ThemeData get _theme => Theme.of(this);

  TextTheme get textStyles => _theme.textTheme;

  ColorScheme get colors => _theme.colorScheme;

  bool get isDarkTheme => _theme.brightness == Brightness.dark;
}

extension ThemeModeExtension on ThemeMode {
  String get name {
    switch (this) {
      case ThemeMode.light:
        return ThemeKeys.light;
      case ThemeMode.dark:
        return ThemeKeys.dark;
      case ThemeMode.system:
        return ThemeKeys.system;
    }
  }

  static ThemeMode fromString(String value) {
    if (value == ThemeKeys.light) return ThemeMode.light;
    if (value == ThemeKeys.dark) return ThemeMode.dark;
    if (value == ThemeKeys.system) return ThemeMode.system;

    throw ArgumentError('Invalid theme mode: $value');
  }
}
