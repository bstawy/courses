import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:gap/gap.dart';

import '../../../../../../../core/extension/theme_ext.dart';
import '../../../../../../../core/helpers/assets_manager.dart';
import '../../../../../../../core/widgets/app_card.dart';
import 'home_coming_soon_features_card_body.dart';

class HomeComingSoonFeatureThree extends StatelessWidget {
  const HomeComingSoonFeatureThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppCard(
          horizontalPadding: 20.w,
          verticalPadding: 20.h,
          backgroundColor: context.colors.secondary,
          child: HomeComingSoonFeaturesCardBody(
            id: "03/",
            title: "YOU WIN THE PROJECT",
            description:
                "Real, paid work that started from learning a single course. Your skills finally turn into income.",
          ),
        ),

        Gap(8.h),
        Image.asset(AssetsManager.homeComingSoonImg03),
      ],
    );
  }
}
