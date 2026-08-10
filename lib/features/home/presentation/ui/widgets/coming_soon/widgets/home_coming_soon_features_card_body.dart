import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:gap/gap.dart';

import '../../../../../../../core/extension/theme_ext.dart';

class HomeComingSoonFeaturesCardBody extends StatelessWidget {
  final String id;
  final String title;
  final String description;

  const HomeComingSoonFeaturesCardBody({
    super.key,
    required this.id,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          id,
          style: context.textStyles.headlineSmall?.copyWith(
            color: context.colors.primary,
          ),
        ),
        Gap(8.h),
        Text(
          title,
          style: context.textStyles.displayLarge?.copyWith(
            color: context.colors.onSecondary,
          ),
        ),
        Gap(10.h),
        Text(
          description,
          style: context.textStyles.bodyMedium?.copyWith(
            color: context.colors.onSecondary,
          ),
        ),
      ],
    );
  }
}
