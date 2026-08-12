import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

import '../../extension/theme_ext.dart';
import 'app_button_enums.dart';

class AppIconButton extends StatelessWidget {
  final Widget? iconWidget;
  final IconData? icon;
  final AppIconButtonVariant variant;
  final AppButtonSize size;
  final VoidCallback? onClicked;
  final bool loading;
  final double? iconSize;

  const AppIconButton({
    super.key,
    this.iconWidget,
    this.icon,
    this.variant = AppIconButtonVariant.outlined,
    this.size = AppButtonSize.medium,
    this.onClicked,
    this.loading = false,
    this.iconSize,
  }) : assert(
         iconWidget != null || icon != null,
         'Either icon or iconWidget must be provided',
       );

  @override
  Widget build(BuildContext context) {
    final colorScheme = context.colors;

    final backgroundColor = switch (variant) {
      AppIconButtonVariant.primary => colorScheme.primary,
      AppIconButtonVariant.outlined => Colors.transparent,
      AppIconButtonVariant.dark => colorScheme.inverseSurface,
      AppIconButtonVariant.surface => colorScheme.surfaceContainer,
    };

    final contentColor = switch (variant) {
      AppIconButtonVariant.primary => colorScheme.onPrimary,
      AppIconButtonVariant.outlined => colorScheme.onSurface,
      AppIconButtonVariant.dark => colorScheme.onInverseSurface,
      AppIconButtonVariant.surface => colorScheme.onSurface,
    };

    final borderColor = switch (variant) {
      AppIconButtonVariant.outlined => colorScheme.onSurface,
      _ => Colors.transparent,
    };

    final buttonSize = switch (size) {
      AppButtonSize.small => 28.r,
      AppButtonSize.medium => 38.r,
      AppButtonSize.large => 48.r,
    };

    final effectiveIconSize =
        iconSize ??
        switch (size) {
          AppButtonSize.small => 14.r,
          AppButtonSize.medium => 20.r,
          AppButtonSize.large => 24.r,
        };

    return RawMaterialButton(
      onPressed: loading ? null : onClicked,
      elevation: 0,
      highlightElevation: 0,
      focusElevation: 0,
      hoverElevation: 0,
      constraints: BoxConstraints.tightFor(
        width: buttonSize,
        height: buttonSize,
      ),
      fillColor: backgroundColor,
      shape: CircleBorder(
        side: BorderSide(color: borderColor, width: 1.5.w),
      ),
      padding: EdgeInsets.zero,
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      disabledElevation: 0,
      child: Center(
        child: loading
            ? SizedBox(
                height: effectiveIconSize,
                width: effectiveIconSize,
                child: CircularProgressIndicator(
                  color: contentColor,
                  strokeWidth: 2,
                ),
              )
            : (iconWidget ??
                  Icon(icon, color: contentColor, size: effectiveIconSize)),
      ),
    );
  }
}
