import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:gap/gap.dart';

import 'home_coming_soon_feature_one.dart';
import 'home_coming_soon_feature_three.dart';
import 'home_coming_soon_feature_two.dart';

class HomeComingSoonFeatures extends StatelessWidget {
  const HomeComingSoonFeatures({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HomeComingSoonFeatureOne(),
        Gap(32.h),
        HomeComingSoonFeatureTwo(),
        Gap(32.h),
        HomeComingSoonFeatureThree(),
      ],
    );
  }
}
