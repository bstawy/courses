import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:gap/gap.dart';

import '../../../../../../../../core/extension/theme_ext.dart';
import '../../../../../../../../core/theme/typography/font_weight_helper.dart';
import '../../../../../../../../core/widgets/app_card.dart';
import '../../../../../../../../core/widgets/buttons/app_button.dart';
import '../../../../../../../../core/widgets/colorful_text.dart';
import 'home_pricing_list_item_benefits_item.dart';

class HomePricingListItem extends StatelessWidget {
  final String planTitle;
  final List<String> planPrice;
  final List<String> planBenefits;
  final String planButtonText;
  final VoidCallback onPickCourse;
  final String? variant;

  const HomePricingListItem({
    super.key,
    required this.planTitle,
    required this.planPrice,
    required this.planBenefits,
    required this.planButtonText,
    required this.onPickCourse,
    this.variant = "light",
  });

  @override
  Widget build(BuildContext context) {
    return AppCard(
      horizontalPadding: 24.w,
      verticalPadding: 24.h,
      backgroundColor: variant == "dark"
          ? context.colors.inverseSurface
          : context.colors.surfaceContainer,
      child: Column(
        crossAxisAlignment: .stretch,
        children: [
          Row(
            children: [
              Text(
                planTitle,
                style: context.textStyles.titleMedium?.copyWith(
                  color: variant == "dark"
                      ? context.colors.onInverseSurface
                      : context.colors.onSurface,
                  fontWeight: FontWeightHelper.semiBold,
                ),
              ),
            ],
          ),
          Gap(16.h),
          if (planPrice.length > 1)
            ColorfulText(
              textData: [
                ColorfulTextData(
                  text: planPrice[0],
                  style: context.textStyles.displayLarge?.copyWith(
                    color: context.colors.primary,
                    fontSize: 36.sp,
                  ),
                ),
                ColorfulTextData(
                  text: planPrice[1],
                  style: context.textStyles.headlineSmall?.copyWith(
                    color: variant == "dark"
                        ? context.colors.onInverseSurface
                        : context.colors.onSurface,
                    fontWeight: FontWeightHelper.extraBold,
                  ),
                ),
              ],

              textAlign: .start,
            )
          else
            Text(
              planPrice[0],
              style: context.textStyles.displayLarge?.copyWith(
                color: context.colors.primary,
                fontSize: 36.sp,
              ),
            ),
          Gap(24.h),
          AppCard(
            horizontalPadding: 12.w,
            verticalPadding: 4.h,
            borderRadius: 16.r,
            backgroundColor: variant == "dark"
                ? context.colors.secondary
                : context.colors.surface,
            child: Column(
              children: planBenefits.map((benefit) {
                final isLastItem =
                    planBenefits.indexOf(benefit) == planBenefits.length - 1;
                return HomePricingListItemBenefitItem(
                  benefitText: benefit,
                  showBorderBottom: !isLastItem,
                  variant: variant,
                );
              }).toList(),
            ),
          ),
          Gap(12.h),
          AppButton(
            onClicked: () {},
            title: planButtonText,
            variant: variant == "dark" ? .primary : .outlined,
            horizontalPadding: 24.w,
            verticalPadding: 8.h,
            fontSize: 12.sp,
            fontWeight: FontWeightHelper.extraBold,
          ),
        ],
      ),
    );
  }
}
