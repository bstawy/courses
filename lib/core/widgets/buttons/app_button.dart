import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:gap/gap.dart';

import 'app_button_enums.dart';

class AppButton extends StatelessWidget {
  final String title;
  final AppButtonVariant variant;
  final AppButtonSize size;
  final VoidCallback? onClicked;
  final bool loading;
  final Widget? prefixWidget;
  final double? width;
  final double? height;

  const AppButton({
    super.key,
    required this.title,
    this.variant = AppButtonVariant.primary,
    this.size = AppButtonSize.medium,
    this.onClicked,
    this.loading = false,
    this.prefixWidget,
    this.width,
    this.height,
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
        horizontal: 12.w,
        vertical: 8.h,
      ),
      AppButtonSize.medium => EdgeInsets.symmetric(
        horizontal: 16.w,
        vertical: 10.h,
      ),
      AppButtonSize.large => EdgeInsets.symmetric(
        horizontal: 20.w,
        vertical: 12.h,
      ),
    };

    final iconSize = switch (size) {
      AppButtonSize.small => 10.r,
      AppButtonSize.medium => 14.r,
      AppButtonSize.large => 20.r,
    };

    final textStyle = switch (size) {
      AppButtonSize.small => textTheme.labelSmall?.copyWith(
        color: contentColor,
      ),
      AppButtonSize.medium => textTheme.labelMedium?.copyWith(
        color: contentColor,
      ),
      AppButtonSize.large => textTheme.labelLarge?.copyWith(
        color: contentColor,
      ),
    };

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
          : Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (prefixWidget != null) ...[
                  SizedBox(
                    height: iconSize,
                    width: iconSize,
                    child: prefixWidget!,
                  ),
                  Gap(8.w),
                ],
                Text(title, style: textStyle),
              ],
            ),
    );
  }
}
