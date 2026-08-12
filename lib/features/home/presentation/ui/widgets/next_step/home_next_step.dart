import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

import '../../../../../../core/extension/theme_ext.dart';
import '../../../../../../core/helpers/assets_manager.dart';
import '../../../../../../core/theme/typography/font_weight_helper.dart';
import '../../../../../../core/widgets/app_card.dart';
import '../../../../../../core/widgets/buttons/app_button.dart';
import '../../../../../../core/widgets/colorful_text.dart';

class HomeNextStep extends StatelessWidget {
  const HomeNextStep({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: .symmetric(horizontal: 16.0.w),
      child: Column(
        children: [
          Image.asset(AssetsManager.homeNextStepImg),
          Gap(8.h),
          AppCard(
            horizontalPadding: 24.w,
            verticalPadding: 24.h,

            backgroundColor: context.colors.inverseSurface,
            child: Column(
              children: [
                ColorfulText(
                  textData: [
                    ColorfulTextData(
                      text: "READY TO",
                      color: context.colors.onInverseSurface,
                    ),
                    ColorfulTextData(
                      text: "TAKE THE NEXT",
                      color: context.colors.primary,
                    ),
                    ColorfulTextData(
                      text: "STEP?",
                      color: context.colors.onInverseSurface,
                    ),
                  ],
                  textAlign: .start,
                ),
                Gap(12.h),
                Text(
                  "Join the 150+ architects and designers already building their careers with us. Your first 14 days are on us.",
                  style: context.textStyles.bodyMedium?.copyWith(
                    color: context.colors.onInverseSurface,
                    fontWeight: FontWeightHelper.bold,
                  ),
                ),
                Gap(34.h),
                Row(
                  mainAxisAlignment: .spaceBetween,
                  crossAxisAlignment: .center,
                  children: [
                    AppButton(title: "START NOW - FREE"),
                    Gap(16.w),
                    Transform(
                      alignment: Alignment.center,
                      transform: Matrix4.rotationX(3.14159),
                      child: SvgPicture.asset(
                        AssetsManager.shapeImg,

                        colorFilter: ColorFilter.mode(
                          context.colors.primary,
                          BlendMode.srcIn,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
