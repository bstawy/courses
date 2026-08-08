import 'package:flutter/material.dart';

import 'app_colors.dart';

class DarkColorScheme extends ColorScheme {
  const DarkColorScheme()
    : super(
        brightness: Brightness.dark,
        primary: AppColors.amber,
        onPrimary: AppColors.teal,
        secondary: AppColors.sage,
        onSecondary: AppColors.teal,
        surface: AppColors.darkGrey,
        onSurface: AppColors.white,
        error: AppColors.red,
        onError: AppColors.white,
      );
}
