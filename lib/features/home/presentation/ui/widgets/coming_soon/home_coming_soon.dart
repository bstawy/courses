import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:gap/gap.dart';

import '../../../../../../core/extension/theme_ext.dart';
import '../../../../../../core/widgets/app_card.dart';
import '../../../../../../core/widgets/buttons/app_button.dart';
import 'widgets/home_coming_soon_features.dart';
import 'widgets/home_coming_soon_heading.dart';

class HomeComingSoon extends StatelessWidget {
  const HomeComingSoon({super.key});

  @override
  Widget build(BuildContext context) {
    return AppCard(
      horizontalMargin: 16.w,
      horizontalPadding: 16.w,
      verticalPadding: 24.h,
      backgroundColor: context.colors.inverseSurface,
      child: Column(
        crossAxisAlignment: .center,
        children: [
          HomeComingSoonHeading(),
          Gap(32.h),
          HomeComingSoonFeatures(),
          Gap(32.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Text(
              "Personal plan members get early access the day it launches.",
              style: context.textStyles.bodySmall?.copyWith(
                color: Colors.white54,
                fontSize: 12.sp,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Gap(10.h),
          AppButton(onClicked: () {}, title: "JOIN NOW & BE FIRST IN LINE"),
        ],
      ),
    );
  }
}
