import 'package:flutter/material.dart';

import '../colors/app_colors.dart';
import '../colors/dark_color_scheme.dart';
import '../colors/light_color_scheme.dart';
import '../typography/app_text_styles.dart';

class AppTheme {
  static final ThemeData lightThemeData = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: AppColors.offWhite,
    colorScheme: const LightColorScheme(),
    fontFamily: 'Stara',
    textTheme: AppTextStyles(),
  );

  static final ThemeData darkThemeData = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: AppColors.offWhite,
    colorScheme: const DarkColorScheme(),
    fontFamily: 'Stara',
    textTheme: AppTextStyles(),
  );
}
