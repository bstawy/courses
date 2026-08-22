import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:gap/gap.dart';

import '../extension/theme_ext.dart';

class AppChip extends StatelessWidget {
  final String label;
  final Widget? leading;
  final Widget? trailing;
  final double? horizontalPadding;
  final double? verticalPadding;
  final Color? backgroundColor;
  final double? borderRadius;
  final Color? borderColor;
  final double? borderWidth;
  final TextStyle? labelStyle;
  final Color? labelColor;

  const AppChip({
    super.key,
    required this.label,
    this.leading,
    this.trailing,
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
      padding: .symmetric(
        horizontal: horizontalPadding ?? 16.w,
        vertical: verticalPadding ?? 4.h,
      ),
      backgroundColor:
          backgroundColor ?? context.colors.primary.withValues(alpha: 0.1),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderRadius ?? 50.r),
      ),
      side: BorderSide(
        color: borderColor ?? Colors.transparent,
        width: borderWidth ?? 0.w,
      ),
      label: (leading == null && trailing == null)
          ? Text(label)
          : (Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (leading != null) ...[leading!, Gap(8.w)],
                Text(label),
                if (trailing != null) ...[Gap(8.w), trailing!],
              ],
            )),
      labelStyle:
          labelStyle ??
          context.textStyles.labelSmall?.copyWith(
            color: labelColor ?? context.colors.primary,
          ),
      labelPadding: .zero,
      elevation: 0,
      surfaceTintColor: Colors.transparent,
    );
  }
}
