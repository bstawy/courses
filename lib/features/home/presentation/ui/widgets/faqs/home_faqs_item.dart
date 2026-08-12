import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

import '../../../../../../core/extension/theme_ext.dart';
import '../../../../../../core/widgets/app_expansion_tile.dart';

class HomeFaqsItem extends StatelessWidget {
  final String title;
  final String content;

  const HomeFaqsItem({super.key, required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return AppExpansionTile(
      title: title,
      collapsedIcon: Icon(Icons.add_circle, size: 16.0.r),
      expandedIcon: Icon(Icons.remove_circle, size: 16.0.r),
      child: Text(
        content,
        style: context.textStyles.bodyLarge?.copyWith(
          color: context.colors.onSurfaceVariant.withAlpha(80),
        ),
      ),
    );
  }
}
