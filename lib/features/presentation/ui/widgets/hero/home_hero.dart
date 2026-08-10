import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

import '../../../../../core/helpers/assets_manager.dart';
import 'widgets/home_hero_stats_card.dart';

class HomeHero extends StatelessWidget {
  const HomeHero({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: .72.sh,
      child: Stack(
        children: [
          Padding(
            padding: .symmetric(horizontal: 22.w),
            child: Image.asset(AssetsManager.homeStatsImg, fit: .contain),
          ),
          Positioned(bottom: 0, left: 0, right: 0, child: HomeHeroStatsCard(),),
        ],
      ),
    );
  }
}
