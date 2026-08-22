import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:gap/gap.dart';

import '../../../../../../core/extension/theme_ext.dart';
import '../../../../../../core/widgets/app_card.dart';
import '../../../../../../core/widgets/buttons/app_button.dart';
import 'hiring_categories.dart';
import 'hiring_locations.dart';

class HiringCategoriesAndLocation extends StatelessWidget {
  const HiringCategoriesAndLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return AppCard(
      horizontalPadding: 4.w,
      verticalPadding: 4.h,
      child: Column(
        crossAxisAlignment: .stretch,
        children: [
          HiringCategories(),
          HiringLocations(),
          Padding(
            padding: .symmetric(horizontal: 8.r),
            child: AppButton(
              onClicked: () {},
              title: "New Job",
              icon: Icon(Icons.add, color: context.colors.surface, size: 14.r),
            ),
          ),
          Gap(16.h),
        ],
      ),
    );
  }
}
