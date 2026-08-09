import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:gap/gap.dart';

import 'widgets/hero/home_hero.dart';
import 'widgets/home_app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: .start,
          children: [
            const HomeAppBar(),
            Gap(24.h),
            HomeHero(),
            Gap(24.h),
            HomeHero(),
          ],
        ),
      ),
    );
  }
}
