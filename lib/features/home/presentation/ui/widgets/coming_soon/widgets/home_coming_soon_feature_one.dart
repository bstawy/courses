import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:gap/gap.dart';

import '../../../../../../../core/extension/theme_ext.dart';
import '../../../../../../../core/helpers/assets_manager.dart';
import '../../../../../../../core/widgets/custom_card.dart';
import 'home_coming_soon_features_card_body.dart';

class HomeComingSoonFeatureOne extends StatelessWidget {
  const HomeComingSoonFeatureOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(AssetsManager.homeComingSoonImg01),
        Gap(8.h),
        CustomCard(
          horizontalPadding: 20.w,
          verticalPadding: 20.h,
          backgroundColor: context.colors.secondary,
          child: HomeComingSoonFeaturesCardBody(
            id: "01/",
            title: "CLIENTS COME LOOKING",
            description:
                "Homeowners and businesses searching for an architect or designer land on Linktura's project gallery.",
          ),
        ),
      ],
    );
  }
}
