import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

import '../extension/theme_ext.dart';

class CustomChip extends StatelessWidget {
  final String label;
  final num? horizontalPadding;
  final num? verticalPadding;
  final Color? backgroundColor;
  final double? borderRadius;
  final Color? borderColor;
  final double? borderWidth;
  final TextStyle? labelStyle;
  final Color? labelColor;

  const CustomChip({
    super.key,
    required this.label,
    this.horizontalPadding,
    this.verticalPadding,
    this.backgroundColor,
    this.borderRadius,
    this.borderColor,
    this.borderWidth,
    this.labelStyle,
    this.labelColor,
  });

  @override
  Widget build(BuildContext context) {
    return Chip(
      padding: .symmetric(horizontal: 16.w, vertical: 4.h),
      backgroundColor: context.colors.primary.withValues(alpha: 0.1),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.r)),
      side: BorderSide(color: Colors.transparent, width: 0.w),
      label: Text(label),
      labelStyle: context.textStyles.labelSmall?.copyWith(
        color: context.colors.primary,
      ),
      labelPadding: .zero,
      elevation: 0,
      surfaceTintColor: Colors.transparent,
    );
  }
}
