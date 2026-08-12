import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:gap/gap.dart';

import '../../../../../../../core/extension/theme_ext.dart';

class HomeInsightsDescription extends StatelessWidget {
  const HomeInsightsDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Lessons funded by industry leaders — lighting, marble, aluminum — teaching you how to actually work with the real materials and products on the market.",
          style: context.textStyles.bodyMedium,
        ),
        Gap(16.h),
        Text(
          "Plus an audio library of architecture & design books summarized into 20-minute episodes, and \"Ask an Architect\" — real community questions answered weekly.",
          style: context.textStyles.bodyMedium,
        ),
      ],
    );
  }
}
