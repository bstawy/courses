import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:gap/gap.dart';

import '../../../../../../core/helpers/assets_manager.dart';
import '../../../../../../core/widgets/custom_chip.dart';
import 'widgets/home_insights_description.dart';
import 'widgets/home_insights_heading.dart';

class HomeInsights extends StatelessWidget {
  const HomeInsights({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: .symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: .start,
        children: [
          CustomChip(label: "SPONSORED INSIGHTS · FREE FOR EVERYONE"),
          Gap(16.h),
          HomeInsightsHeading(),
          Gap(16.h),
          HomeInsightsDescription(),
          Gap(24.h),
          Image.asset(AssetsManager.homeInsightsImg),
        ],
      ),
    );
  }
}
