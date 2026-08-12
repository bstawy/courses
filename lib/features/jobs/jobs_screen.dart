import 'package:courses/core/widgets/app_expansion_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:gap/gap.dart';

import '../../core/helpers/assets_manager.dart';
import '../../core/widgets/app_card.dart';
import '../../core/widgets/app_chip.dart';
import '../../core/widgets/buttons/app_button.dart';
import '../home/presentation/ui/widgets/home_app_bar.dart';

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
                  AppCard(
                    horizontalPadding: 4.w,
                    verticalPadding: 4.h,
                    child: Column(
                      children: [
                        AppExpansionTile(
                          title: "Categories",
                          borderRadius: 24.r,
                          child: Row(
                            mainAxisAlignment: .spaceBetween,
                            children: [
                              AppButton(
                                onClicked: () {},
                                title: "Jobs",
                                variant: .dark,
                              ),
                              Gap(4.w),
                              AppButton(
                                onClicked: () {},
                                title: "Architectures",
                                variant: .dark,
                              ),
                              Gap(4.w),
                              AppButton(
                                onClicked: () {},
                                variant: .dark,
                                title: "Projects",
                                // icon: AppChip(label: "Pro"),
                                // iconPosition: "right",
                                // iconSize: 50.r,
                              ),
                            ],
                          ),
                        ),
                        AppExpansionTile(
                          title: "Location",
                          borderRadius: 24.r,
                          child: Row(
                            mainAxisAlignment: .spaceBetween,
                            children: [
                              Expanded(
                                child: AppExpansionTile(
                                  title: "Select a Country",
                                  borderRadius: 24.r,
                                  child: Column(
                                    mainAxisAlignment: .spaceBetween,
                                    children: [
                                      AppButton(
                                        onClicked: () {},
                                        title: "Jobs",
                                        variant: .dark,
                                      ),
                                      Gap(4.w),
                                      AppButton(
                                        onClicked: () {},
                                        title: "Architectures",
                                        variant: .dark,
                                      ),
                                      Gap(4.w),
                                      AppButton(
                                        onClicked: () {},
                                        variant: .dark,
                                        title: "Projects",
                                        // icon: AppChip(label: "Pro"),
                                        // iconPosition: "right",
                                        // iconSize: 50.r,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: AppExpansionTile(
                                  title: "Select a Country",
                                  borderRadius: 24.r,
                                  child: Column(
                                    mainAxisAlignment: .spaceBetween,
                                    children: [
                                      AppButton(
                                        onClicked: () {},
                                        title: "Jobs",
                                        variant: .dark,
                                      ),
                                      Gap(4.w),
                                      AppButton(
                                        onClicked: () {},
                                        title: "Architectures",
                                        variant: .dark,
                                      ),
                                      Gap(4.w),
                                      AppButton(
                                        onClicked: () {},
                                        variant: .dark,
                                        title: "Projects",
                                        // icon: AppChip(label: "Pro"),
                                        // iconPosition: "right",
                                        // iconSize: 50.r,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
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
