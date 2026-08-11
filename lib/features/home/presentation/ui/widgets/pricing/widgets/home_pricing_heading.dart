import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:gap/gap.dart';

import '../../../../../../../core/extension/theme_ext.dart';
import '../../../../../../../core/widgets/colorful_text.dart';
import '../../../../../../../core/widgets/custom_chip.dart';

class HomePricingHeading extends StatelessWidget {
  const HomePricingHeading({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .center,
      children: [
        CustomChip(label: "Pricing"),
        Gap(10.h),
        SizedBox(
          width: 0.8.sw,
          child: ColorfulText(
            textData: [
              ColorfulTextData(
                text: "CHOOSE",
                style: context.textStyles.headlineMedium,
              ),
              ColorfulTextData(
                text: "THE PLAN",
                style: context.textStyles.headlineMedium?.copyWith(
                  color: context.colors.primary,
                ),
              ),
              ColorfulTextData(
                text: "THAT FITS YOU",
                style: context.textStyles.headlineMedium,
              ),
            ],
          ),
        ),
        Gap(10.h),
        Text(
          "Start free. Upgrade when it feels worth it. Cancel anytime.",
          textAlign: .center,
          style: context.textStyles.bodyMedium,
        ),
      ],
    );
  }
}
