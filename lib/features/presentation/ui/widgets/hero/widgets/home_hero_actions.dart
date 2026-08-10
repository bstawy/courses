import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

import '../../../../../../core/helpers/assets_manager.dart';
import '../../../../../../core/widgets/buttons/app_button.dart';

class HomeHeroActions extends StatelessWidget {
  const HomeHeroActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .center,
      children: [
        AppButton(
          title: "Start Learning - 14 Days Free".toUpperCase(),
          variant: .primary,
        ),
        Gap(8.h),
        AppButton(
          title: "See How It Works".toUpperCase(),
          icon: SvgPicture.asset(AssetsManager.playIcon),
          variant: .outlined,
        ),
      ],
    );
  }
}
