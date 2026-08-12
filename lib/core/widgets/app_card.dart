import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

import '../extension/theme_ext.dart';
import '../theme/colors/app_colors.dart';

class AppCard extends StatelessWidget {
  final double? horizontalMargin;
  final double? verticalMargin;
  final double? horizontalPadding;
  final double? verticalPadding;
  final Color? backgroundColor;
  final double? borderRadius;
  final Color? borderColor;
  final double? borderWidth;
  final Widget? child;

  const AppCard({
    super.key,
    this.horizontalMargin,
    this.verticalMargin,
    this.horizontalPadding,
    this.verticalPadding,
    this.backgroundColor,
    this.borderRadius,
    this.borderColor,
    this.borderWidth,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: .symmetric(
        horizontal: horizontalMargin ?? 0,
        vertical: verticalMargin ?? 0,
      ),
      padding: .symmetric(
        horizontal: horizontalPadding ?? 0,
        vertical: verticalPadding ?? 0,
      ),
      decoration: BoxDecoration(
        color: backgroundColor ?? context.colors.surfaceContainer,
        borderRadius: .circular(borderRadius ?? 32.r),
        border: .all(
          color: borderColor ?? AppColors.transparentBlack,
          width: borderWidth ?? .5.w,
        ),
      ),
      child: child,
    );
  }
}
