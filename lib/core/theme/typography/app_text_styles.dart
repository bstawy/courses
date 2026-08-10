import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

import 'font_weight_helper.dart';

class AppTextStyles extends TextTheme {
  AppTextStyles()
    : super(
        // done
        displayLarge: TextStyle(
          fontSize: 24.sp,
          fontWeight: FontWeightHelper.extraBold,
          height: 1.0,
        ),
        displayMedium: TextStyle(
          fontSize: 45.sp,
          fontWeight: FontWeightHelper.light,
        ),
        displaySmall: TextStyle(
          fontSize: 36.sp,
          fontWeight: FontWeightHelper.regular,
        ),
        headlineLarge: TextStyle(
          fontSize: 32.sp,
          fontWeight: FontWeightHelper.regular,
        ),
        headlineMedium: TextStyle(
          fontSize: 22.sp,
          fontWeight: FontWeightHelper.extraBold,
          height: 1.0,
        ),
        headlineSmall: TextStyle(
          fontSize: 24.sp,
          fontWeight: FontWeightHelper.regular,
        ),
        titleLarge: TextStyle(
          fontSize: 22.sp,
          fontWeight: FontWeightHelper.medium,
        ),
        // done
        titleMedium: TextStyle(
          fontSize: 18.sp,
          fontWeight: FontWeightHelper.extraBold,
          height: 1.0,
        ),
        titleSmall: TextStyle(
          fontSize: 14.sp,
          fontWeight: FontWeightHelper.medium,
        ),
        // done
        bodyLarge: TextStyle(
          fontSize: 10.sp,
          fontWeight: FontWeightHelper.semiBold,
          height: 1.2,
        ),
        // done
        bodyMedium: TextStyle(
          fontSize: 10.sp,
          fontWeight: FontWeightHelper.semiBold,
        ),
        // done
        bodySmall: TextStyle(fontSize: 8.sp, fontWeight: FontWeightHelper.bold),
        // done
        labelLarge: TextStyle(
          fontSize: 14.sp,
          fontWeight: FontWeightHelper.bold,
        ),
        // done
        labelMedium: TextStyle(
          fontSize: 10.sp,
          fontWeight: FontWeightHelper.extraBold,
        ),
        // done
        labelSmall: TextStyle(
          fontSize: 8.sp,
          fontWeight: FontWeightHelper.semiBold,
        ),
      );
}
