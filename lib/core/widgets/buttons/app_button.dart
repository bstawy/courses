import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:gap/gap.dart';

import 'app_button_enums.dart';

class AppButton extends StatelessWidget {
  final String? title;
  final AppButtonVariant variant;
  final AppButtonSize size;
  final VoidCallback? onClicked;
  final bool loading;
  final Widget? icon;
  final String? iconPosition;
  final double? width;
  final double? height;
  final double? horizontalPadding;
  final double? verticalPadding;
  final double? fontSize;
  final double? iconSize;
  final FontWeight? fontWeight;
  final Widget? child;

  const AppButton({
    super.key,
    this.title,
    this.variant = AppButtonVariant.primary,
    this.size = AppButtonSize.medium,
    this.onClicked,
    this.loading = false,
    this.icon,
    this.iconPosition,
    this.width,
    this.height,
    this.horizontalPadding,
    this.verticalPadding,
    this.fontSize,
    this.iconSize,
    this.fontWeight,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    final backgroundColor = switch (variant) {
      AppButtonVariant.primary => colorScheme.primary,
      AppButtonVariant.outlined => Colors.transparent,
      AppButtonVariant.dark => colorScheme.inverseSurface,
    };

    final contentColor = switch (variant) {
      AppButtonVariant.primary => colorScheme.onPrimary,
      AppButtonVariant.outlined => colorScheme.primary,
      AppButtonVariant.dark => colorScheme.onInverseSurface,
    };

    final borderColor = variant == AppButtonVariant.outlined
        ? colorScheme.primary
        : Colors.transparent;

    final padding = switch (size) {
      AppButtonSize.small => EdgeInsets.symmetric(
        horizontal: horizontalPadding ?? 12.w,
        vertical: verticalPadding ?? 8.h,
      ),
      AppButtonSize.medium => EdgeInsets.symmetric(
        horizontal: horizontalPadding ?? 16.w,
        vertical: verticalPadding ?? 10.h,
      ),
      AppButtonSize.large => EdgeInsets.symmetric(
        horizontal: horizontalPadding ?? 20.w,
        vertical: verticalPadding ?? 12.h,
      ),
    };

    final textStyle = switch (size) {
      AppButtonSize.small => textTheme.labelSmall?.copyWith(
        color: contentColor,
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
      AppButtonSize.medium => textTheme.labelMedium?.copyWith(
        color: contentColor,
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
      AppButtonSize.large => textTheme.labelLarge?.copyWith(
        color: contentColor,
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
    };

    final iconSize = switch (size) {
      AppButtonSize.small => this.iconSize ?? 10.r,
      AppButtonSize.medium => this.iconSize ?? 14.r,
      AppButtonSize.large => this.iconSize ?? 20.r,
    };

    final iconPosition = this.iconPosition ?? 'left';

    void handleClick() {
      if (!loading && onClicked != null) {
        onClicked!();
      }
    }

    return MaterialButton(
      onPressed: handleClick,
      height: height,
      minWidth: width,
      elevation: 0,
      padding: padding,
      color: backgroundColor,
      disabledColor: backgroundColor.withValues(alpha: 0.5),
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(100.r),
        side: BorderSide(color: borderColor, width: 1.w),
      ),
      child: loading
          ? SizedBox(
              height: iconSize,
              width: iconSize,
              child: CircularProgressIndicator(
                color: contentColor,
                strokeWidth: 2,
              ),
            )
          : child ??
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    if (icon != null && iconPosition == 'left') ...[
                      SizedBox(height: iconSize, width: iconSize, child: icon!),
                      Gap(8.w),
                    ],
                    Text(title ?? "", style: textStyle),
                    if (icon != null && iconPosition == 'right') ...[
                      Gap(8.w),
                      SizedBox(height: iconSize, width: iconSize, child: icon!),
                    ],
                  ],
                ),
    );
  }
}
