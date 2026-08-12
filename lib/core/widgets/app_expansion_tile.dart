import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

import '../extension/theme_ext.dart';

class AppExpansionTile extends StatefulWidget {
  final String title;
  final String? subtitle;
  final List<String>? children;
  final Widget? leading;
  final Widget? trailing;
  final TextStyle? titleTextStyle;
  final TextStyle? subtitleTextStyle;
  final TextStyle? childTextStyle;
  final Color? backgroundColor;
  final Color? collapsedBackgroundColor;
  final Color? iconColor;
  final Color? collapsedIconColor;
  final EdgeInsetsGeometry? tilePadding;
  final EdgeInsetsGeometry? childrenPadding;
  final ShapeBorder? shape;
  final ShapeBorder? collapsedShape;
  final bool? initiallyExpanded;

  const AppExpansionTile({
    super.key,
    required this.title,
    this.children,
    this.subtitle,
    this.leading,
    this.trailing,
    this.titleTextStyle,
    this.subtitleTextStyle,
    this.childTextStyle,
    this.backgroundColor,
    this.collapsedBackgroundColor,
    this.iconColor,
    this.collapsedIconColor,
    this.tilePadding,
    this.childrenPadding,
    this.shape,
    this.collapsedShape,
    this.initiallyExpanded,
  });

  @override
  State<AppExpansionTile> createState() => _AppExpansionTileState();
}

class _AppExpansionTileState extends State<AppExpansionTile> {
  IconData _icon = Icons.add_circle;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      tilePadding:
          widget.tilePadding ??
          .symmetric(horizontal: 12.0.w, vertical: 12.0.h),
      childrenPadding:
          widget.childrenPadding ??
          .only(left: 12.0.w, top: 0.h, right: 12.0.w, bottom: 12.0.h),
      title: Text(
        widget.title,
        style: widget.titleTextStyle ?? context.textStyles.bodyLarge,
      ),
      subtitle: widget.subtitle != null
          ? Text(
              widget.subtitle!,
              style: widget.subtitleTextStyle ?? context.textStyles.bodyMedium,
            )
          : null,
      leading: widget.leading,
      trailing: widget.trailing ?? Icon(_icon, size: 16.0.r),
      backgroundColor:
          widget.backgroundColor ?? context.colors.surfaceContainer,
      collapsedBackgroundColor:
          widget.collapsedBackgroundColor ?? context.colors.surfaceContainer,
      shape:
          widget.shape ?? RoundedRectangleBorder(borderRadius: .circular(12.r)),
      collapsedShape:
          widget.collapsedShape ??
          RoundedRectangleBorder(borderRadius: .circular(12.r)),
      iconColor: widget.iconColor ?? context.colors.onSurfaceVariant,
      collapsedIconColor:
          widget.collapsedIconColor ?? context.colors.onSurfaceVariant,
      dense: true,
      initiallyExpanded: widget.initiallyExpanded ?? false,
      visualDensity: VisualDensity.compact,
      onExpansionChanged: (bool expanded) {
        if (expanded) {
          setState(() {
            _icon = Icons.remove_circle;
          });
        } else {
          setState(() {
            _icon = Icons.add_circle;
          });
        }
      },
      children: widget.children != null
          ? widget.children!
                .map(
                  (child) => Text(
                    child,
                    style:
                        widget.childTextStyle ??
                        context.textStyles.bodyLarge?.copyWith(
                          color: context.colors.onSurfaceVariant.withAlpha(80),
                        ),
                  ),
                )
                .toList()
          : [],
    );
  }
}
