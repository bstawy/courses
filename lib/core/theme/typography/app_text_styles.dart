import 'package:flutter/material.dart';

import 'font_weight_helper.dart';

class AppTextStyles extends TextTheme {
  AppTextStyles()
    : super(
        // done
        displayLarge: TextStyle(
          fontSize: 24,
          fontWeight: FontWeightHelper.extraBold,
          height: 1.0,
        ),
        displayMedium: TextStyle(
          fontSize: 45,
          fontWeight: FontWeightHelper.light,
        ),
        displaySmall: TextStyle(
          fontSize: 36,
          fontWeight: FontWeightHelper.regular,
        ),
        headlineLarge: TextStyle(
          fontSize: 32,
          fontWeight: FontWeightHelper.regular,
        ),
        headlineMedium: TextStyle(
          fontSize: 28,
          fontWeight: FontWeightHelper.regular,
        ),
        headlineSmall: TextStyle(
          fontSize: 24,
          fontWeight: FontWeightHelper.regular,
        ),
        titleLarge: TextStyle(
          fontSize: 22,
          fontWeight: FontWeightHelper.medium,
        ),
        titleMedium: TextStyle(
          fontSize: 16,
          fontWeight: FontWeightHelper.medium,
        ),
        titleSmall: TextStyle(
          fontSize: 14,
          fontWeight: FontWeightHelper.medium,
        ),
        // done
        bodyLarge: TextStyle(
          fontSize: 10,
          fontWeight: FontWeightHelper.semiBold,
          height: 1.2,
        ),
        bodyMedium: TextStyle(
          fontSize: 14,
          fontWeight: FontWeightHelper.regular,
        ),
        bodySmall: TextStyle(
          fontSize: 12,
          fontWeight: FontWeightHelper.regular,
        ),
        labelLarge: TextStyle(fontSize: 14, fontWeight: FontWeightHelper.bold),
        // done
        labelMedium: TextStyle(
          fontSize: 10,
          fontWeight: FontWeightHelper.extraBold,
        ),
        labelSmall: TextStyle(fontSize: 10, fontWeight: FontWeightHelper.bold),
      );
}
