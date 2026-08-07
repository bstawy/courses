import 'package:flutter/material.dart';

import '../colors/app_color_scheme.dart';
import '../typography/app_text_styles.dart';

class AppTheme {
  static final ThemeData lightThemeData = ThemeData(
    useMaterial3: true,
    fontFamily: 'Stara',
    colorScheme: const AppColorScheme(),
    textTheme: AppTextStyles(),
  );

  static final ThemeData darkThemeData = ThemeData(
    useMaterial3: true,
    fontFamily: 'Stara',
    colorScheme: const AppColorScheme(),
    textTheme: AppTextStyles(),
  );
}
