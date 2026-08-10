import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

import '../../../../../../../core/extension/theme_ext.dart';
import '../../../../../../../core/helpers/assets_manager.dart';
import '../../../../../../../core/widgets/custom_card.dart';
import 'home_coming_soon_features_card_body.dart';

class HomeComingSoonFeatureTwo extends StatelessWidget {
  const HomeComingSoonFeatureTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      backgroundColor: context.colors.secondary,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(AssetsManager.homeComingSoonImg02),
          Padding(
            padding: .symmetric(horizontal: 20.w, vertical: 20.h),
            child: HomeComingSoonFeaturesCardBody(
              id: "02/",
              title: "THEY REACH YOU DIRECTLY",
              description:
                  "A client sees your work, likes your style, and sends an inquiry straight to you — no middleman, no commission cut.",
            ),
          ),
        ],
      ),
    );
  }
}
