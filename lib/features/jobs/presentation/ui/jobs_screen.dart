import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:gap/gap.dart';

import '../../../../core/helpers/assets_manager.dart';
import '../../../home/presentation/ui/widgets/home_app_bar.dart';
import 'widgets/categories_and_location/jobs_categories_and_location.dart';
import 'widgets/projects/jobs_projects.dart';

class JobsScreen extends StatelessWidget {
  const JobsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: .start,
          children: [
            const HomeAppBar(),
            Gap(24.h),
            Padding(
              padding: .symmetric(horizontal: 16.w),
              child: Column(
                children: [
                  Image.asset(AssetsManager.jobsHeroImg),
                  Gap(8.h),
                  JobsCategoriesAndLocation(),
                  Gap(24.h),
                  JobsProjects(),
                ],
              ),
            ),
            Gap(96.h),
          ],
        ),
      ),
    );
  }
}
