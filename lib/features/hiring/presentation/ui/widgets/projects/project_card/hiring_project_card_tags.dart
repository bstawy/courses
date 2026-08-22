import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

import '../../../../../../../core/extension/theme_ext.dart';
import '../../../../../../../core/widgets/app_chip.dart';

class HiringProjectCardTags extends StatelessWidget {
  final List<String> tags;
  final String timeAgo;

  const HiringProjectCardTags({
    super.key,
    required this.tags,
    required this.timeAgo,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ...tags.map(
          (tag) => Padding(
            padding: EdgeInsets.only(right: 4.w),
            child: AppChip(
              label: tag,
              horizontalPadding: 8.w,
              verticalPadding: 1.h,
            ),
          ),
        ),
        const Spacer(),
        Icon(Icons.access_time, size: 10.r, color: Colors.black45),
        const SizedBox(width: 4),
        Text(
          timeAgo,
          style: context.textStyles.labelSmall?.copyWith(color: Colors.black45),
        ),
      ],
    );
  }
}
