import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:gap/gap.dart';

import '../../../../../../core/widgets/app_expansion_tile.dart';
import '../../../../../../core/widgets/buttons/app_button.dart';

class JobsCategories extends StatefulWidget {
  const JobsCategories({super.key});

  @override
  State<JobsCategories> createState() => _JobsCategoriesState();
}

class _JobsCategoriesState extends State<JobsCategories> {
  int? selectedOption;

  @override
  Widget build(BuildContext context) {
    return AppExpansionTile(
      title: "Categories",
      borderRadius: 24.r,
      child: Row(
        mainAxisAlignment: .spaceBetween,
        children: [
          AppButton(
            onClicked: () {
              setState(() {
                selectedOption = 0;
              });
            },
            title: "Jobs",
            variant: selectedOption == 0 ? .dark : .surface,
          ),
          Gap(4.w),
          AppButton(
            onClicked: () {
              setState(() {
                selectedOption = 1;
              });
            },
            title: "Architectures",
            variant: selectedOption == 1 ? .dark : .surface,
          ),
          Gap(4.w),
          AppButton(
            onClicked: () {
              setState(() {
                selectedOption = 2;
              });
            },
            title: "Projects",
            variant: selectedOption == 2 ? .dark : .surface,
          ),
        ],
      ),
    );
  }
}
