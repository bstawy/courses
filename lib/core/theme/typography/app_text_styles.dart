import 'package:flutter/material.dart';

import 'font_weight_helper.dart';

class AppTextStyles extends TextTheme {
  AppTextStyles()
    : super(
        displayLarge: TextStyle(
          fontSize: 57,
          fontWeight: FontWeightHelper.light,
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
        bodyLarge: TextStyle(
          fontSize: 16,
          fontWeight: FontWeightHelper.regular,
        ),
        bodyMedium: TextStyle(
          fontSize: 14,
          fontWeight: FontWeightHelper.regular,
        ),
        bodySmall: TextStyle(
          fontSize: 12,
          fontWeight: FontWeightHelper.regular,
        ),
        labelLarge: TextStyle(
          fontSize: 14,
          fontWeight: FontWeightHelper.medium,
        ),
        labelMedium: TextStyle(
          fontSize: 12,
          fontWeight: FontWeightHelper.medium,
        ),
        labelSmall: TextStyle(
          fontSize: 11,
          fontWeight: FontWeightHelper.medium,
        ),
      );
}
