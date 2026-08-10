import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:gap/gap.dart';

import '../../../../../../core/extension/theme_ext.dart';
import '../../../../../../core/widgets/custom_card.dart';
import 'home_hero_actions.dart';
import 'home_hero_stats_card_title.dart';

class HomeHeroStatsCard extends StatelessWidget {
  const HomeHeroStatsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      horizontalMargin: 16.w,
      horizontalPadding: 24.w,
      verticalPadding: 32.h,
      child: Column(
        crossAxisAlignment: .center,
        children: [
          HomeHeroStatsCardTitle(),
          Gap(16.h),
          Text(
            "The only professional platform where you learn from the best, gain real-world tools, and get connected to clients looking for an architect, all in one place.",
            style: context.textStyles.bodyLarge,
            textAlign: .center,
          ),
          Gap(16.h),
          HomeHeroActions(),
        ],
      ),
    );
  }
}
