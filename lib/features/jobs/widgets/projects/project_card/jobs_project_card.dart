import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:gap/gap.dart';

import '../../../../../core/extension/theme_ext.dart';
import '../../../../../core/theme/colors/app_colors.dart';
import '../../../../../core/theme/typography/font_weight_helper.dart';
import '../../../../../core/widgets/app_card.dart';
import '../../../../../core/widgets/buttons/app_button.dart';
import 'jobs_project_card_clipper.dart';
import 'jobs_project_card_tags.dart';

class JobsProjectCard extends StatelessWidget {
  final List<String> tags;
  final String timeAgo;
  final String title;
  final List<String> priceRange;
  final String description;
  final VoidCallback onViewDetails;
  final VoidCallback onApplyNow;

  const JobsProjectCard({
    super.key,
    required this.tags,
    required this.timeAgo,
    required this.title,
    required this.priceRange,
    required this.description,
    required this.onViewDetails,
    required this.onApplyNow,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomLeft,
      children: [
        ClipPath(
          clipper: JobsProjectCardClipper(),
          child: AppCard(
            horizontalPadding: 14.w,
            verticalPadding: 14.h,
            borderRadius: 20.r,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                JobsProjectCardTags(tags: tags, timeAgo: timeAgo),
                Gap(8.h),
                Text(title, style: context.textStyles.titleSmall),
                Gap(12.h),
                Text(
                  priceRange.join(' - '),
                  style: context.textStyles.titleMedium?.copyWith(
                    color: AppColors.red,
                    fontWeight: FontWeightHelper.bold,
                  ),
                ),
                Gap(16.h),
                Text(
                  description,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: context.textStyles.bodySmall?.copyWith(
                    color: Colors.black38,
                  ),
                ),
                Gap(16.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    AppButton(
                      onClicked: onViewDetails,
                      title: "View Details",
                      fontSize: 10.sp,
                      fontWeight: FontWeightHelper.semiBold,
                      icon: Icon(Icons.arrow_forward_ios_rounded, size: 10.r),
                      iconSize: 10.r,
                      iconPosition: "right",
                      variant: .surface,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Positioned(
          left: 0,
          bottom: 0,
          child: AppButton(
            onClicked: onApplyNow,
            title: "APPLY NOW",
            verticalPadding: 8.h,
          ),
        ),
      ],
    );
  }
}
