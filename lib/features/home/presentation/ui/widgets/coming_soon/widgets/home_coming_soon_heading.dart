import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:gap/gap.dart';

import '../../../../../../../core/extension/theme_ext.dart';
import '../../../../../../../core/widgets/app_chip.dart';
import '../../../../../../../core/widgets/colorful_text.dart';

class HomeComingSoonHeading extends StatelessWidget {
  const HomeComingSoonHeading({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .center,
      children: [
        AppChip(
          leading: Container(
            width: 6.w,
            height: 6.h,
            decoration: BoxDecoration(
              color: context.colors.primary,
              shape: BoxShape.circle,
            ),
          ),
          label: "COMING SOON",
        ),
        Gap(10.h),
        ColorfulText(
          textData: [
            ColorfulTextData(
              text: "WE DON'T JUST TEACH YOU.",
              style: context.textStyles.headlineMedium?.copyWith(
                color: context.colors.onInverseSurface,
              ),
            ),
            ColorfulTextData(
              text: "WE BRING YOU CLIENTS.",
              style: context.textStyles.headlineMedium?.copyWith(
                color: context.colors.primary,
              ),
            ),
          ],
        ),
        Gap(16.h),
        Padding(
          padding: .symmetric(horizontal: 4.w),
          child: Text(
            "No course on the internet gets you actual work. Linktura will — through a direct lead engine that connects end clients searching for an architect straight to you.",
            style: context.textStyles.bodyMedium?.copyWith(
              color: context.colors.onInverseSurface,
            ),
            textAlign: .center,
          ),
        ),
      ],
    );
  }
}
