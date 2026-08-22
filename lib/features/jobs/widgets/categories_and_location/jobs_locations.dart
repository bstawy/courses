import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:gap/gap.dart';

import '../../../../core/widgets/app_expansion_tile.dart';
import '../../../../core/widgets/buttons/app_button.dart';

class JobsLocations extends StatelessWidget {
  const JobsLocations({super.key});

  @override
  Widget build(BuildContext context) {
    return AppExpansionTile(
      title: "Location",
      borderRadius: 24.r,
      child: Row(
        mainAxisAlignment: .spaceBetween,
        crossAxisAlignment: .start,
        children: [
          Expanded(
            child: AppExpansionTile(
              title: "Select Country",
              borderRadius: 24.r,
              child: SizedBox(
                height: 120.h,
                child: ListView(
                  // crossAxisAlignment: .stretch,
                  padding: .zero,
                  children: [
                    AppButton(onClicked: () {}, title: "Jobs", variant: .dark),
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
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: AppExpansionTile(
              title: "Select City",
              borderRadius: 24.r,
              child: SizedBox(
                height: 120.h,
                child: ListView(
                  // crossAxisAlignment: .stretch,
                  padding: .zero,
                  children: [
                    AppButton(
                      onClicked: () {},
                      title: "Jobs",
                      variant: .surface,
                    ),
                    Gap(4.w),
                    AppButton(
                      onClicked: () {},
                      title: "Architectures",
                      variant: .surface,
                    ),
                    Gap(4.w),
                    AppButton(
                      onClicked: () {},
                      variant: .surface,
                      title: "Projects",
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
