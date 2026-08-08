import 'package:flutter/material.dart';

import 'app_colors.dart';

class LightColorScheme extends ColorScheme {
  const LightColorScheme()
    : super(
        brightness: Brightness.light,
        primary: AppColors.red,
        onPrimary: AppColors.offWhite,
        secondary: AppColors.offBlack,
        onSecondary: AppColors.offWhite,
        surface: AppColors.offWhite,
        onSurface: AppColors.carbonBlack,
        surfaceContainer: AppColors.brightGrey,
        onSurfaceVariant: AppColors.carbonBlack,
        inverseSurface: AppColors.carbonBlack,
        onInverseSurface: AppColors.offWhite,
        error: AppColors.red,
        onError: AppColors.offWhite,
      );
}
