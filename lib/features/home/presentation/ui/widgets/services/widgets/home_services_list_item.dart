import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

import '../../../../../../../core/extension/theme_ext.dart';
import '../../../../../../../core/helpers/assets_manager.dart';
import '../../../../../../../core/widgets/buttons/app_button.dart';
import '../../../../../../../core/widgets/colorful_text.dart';
import '../../../../../../../core/widgets/custom_card.dart';

class HomeServicesListItem extends StatelessWidget {
  final String imagePath;
  final String textOnShape;
  final List<ColorfulTextData> title;
  final String description;
  final String buttonText;
  final VoidCallback onButtonPressed;

  const HomeServicesListItem({
    super.key,
    required this.imagePath,
    required this.textOnShape,
    required this.title,
    required this.description,
    required this.buttonText,
    required this.onButtonPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomCard(
          horizontalPadding: 20.h,
          verticalPadding: 20.h,
          child: Column(
            crossAxisAlignment: .start,
            children: [
              ClipRRect(
                borderRadius: .only(
                  topLeft: Radius.circular(24.r),
                  topRight: Radius.circular(32.r),
                  bottomLeft: Radius.circular(24.r),
                  bottomRight: Radius.circular(24.r),
                ),
                child: Image.asset(imagePath, fit: .fill, width: 1.sw),
              ),
              Gap(16.h),
              ColorfulText(textAlign: .start, textData: title),
              Gap(10.h),
              Text(description, style: context.textStyles.bodyMedium),
              Gap(10.h),
              AppButton(
                onClicked: onButtonPressed,
                title: buttonText,
                icon: SvgPicture.asset(AssetsManager.arrowIcon),
                iconPosition: 'right',
              ),
            ],
          ),
        ),
        Positioned(
          top: 20.h,
          right: 20.w,
          child: SvgPicture.asset(
            AssetsManager.shapeImg,
            fit: .fill,
            height: 58.h,
            width: 58.w,
          ),
        ),
        Positioned(
          top: 20.h,
          right: 20.w,
          child: Text(
            textOnShape,
            style: context.textStyles.bodySmall,
            textAlign: .end,
          ),
        ),
      ],
    );
  }
}
