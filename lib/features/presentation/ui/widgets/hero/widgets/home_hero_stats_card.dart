import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

import '../../../../../../core/extension/theme_ext.dart';
import '../../../../../../core/helpers/assets_manager.dart';
import '../../../../../../core/theme/colors/app_colors.dart';
import '../../../../../../core/widgets/buttons/app_button.dart';
import 'home_hero_stats_card_title.dart';

class HomeHeroStatsCard extends StatelessWidget {
  const HomeHeroStatsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: .symmetric(horizontal: 16.w),
      padding: .symmetric(horizontal: 24.w, vertical: 32.h),
      decoration: BoxDecoration(
        color: context.colors.surfaceContainer,
        borderRadius: BorderRadius.circular(32.r),
        border: Border.all(color: AppColors.transparentBlack, width: .5.w),
      ),
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
          AppButton(
            title: "Start Learning - 14 Days Free".toUpperCase(),
            variant: .primary,
          ),
          Gap(8.h),
          AppButton(
            title: "See How It Works".toUpperCase(),
            prefixWidget: SvgPicture.asset(AssetsManager.playIcon),
            variant: .outlined,
          ),
        ],
      ),
    );
  }
}
