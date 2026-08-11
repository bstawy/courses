import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:gap/gap.dart';

import '../../../../../../../../core/extension/theme_ext.dart';
import '../../../../../../../../core/theme/colors/app_colors.dart';

class HomePricingListItemBenefitItem extends StatelessWidget {
  final String benefitText;
  final bool showBorderBottom;
  final String? variant;

  const HomePricingListItemBenefitItem({
    super.key,
    required this.benefitText,
    this.showBorderBottom = true,
    this.variant = "light",
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: .symmetric(vertical: 8.h),
      decoration: BoxDecoration(
        border: Border(
          bottom: showBorderBottom
              ? BorderSide(
                  color: variant == 'dark'
                      ? Colors.white.withOpacity(0.05)
                      : AppColors.transparentBlack,
                  width: 1.0,
                )
              : BorderSide.none,
        ),
      ),
      child: Row(
        children: [
          Icon(Icons.check, color: context.colors.primary, size: 14.sp),
          Gap(8.w),
          Text(
            benefitText,
            style: context.textStyles.bodyLarge?.copyWith(
              color: variant == 'dark'
                  ? context.colors.onInverseSurface
                  : context.colors.onSurface,
            ),
          ),
        ],
      ),
    );
  }
}
