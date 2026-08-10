import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:gap/gap.dart';

import '../../../../../../../core/extension/theme_ext.dart';
import '../../../../../../../core/helpers/assets_manager.dart';
import '../../../../../../../core/widgets/colorful_text.dart';
import 'home_services_list_item.dart';

class HomeServicesList extends StatelessWidget {
  const HomeServicesList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: .symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HomeServicesListItem(
            imagePath: AssetsManager.homeServicesImg01,
            textOnShape: "START\nLEARNING",
            title: [
              ColorfulTextData(
                text: "LEARN FROM PEOPLE",
                style: context.textStyles.titleMedium,
              ),
              ColorfulTextData(
                text: "WHO ACTUALLY BUILD.",
                style: context.textStyles.titleMedium?.copyWith(
                  color: context.colors.primary,
                ),
              ),
            ],
            description:
                "In-depth courses in AutoCAD, Revit, V-Ray and AI for visualization — taught in Hebrew by working architects, not textbook theory.",
            buttonText: "EXPLORE COURSES",
            onButtonPressed: () {},
          ),
          Gap(8.h),
          HomeServicesListItem(
            imagePath: AssetsManager.homeServicesImg02,
            textOnShape: "START\nWORKING",
            title: [
              ColorfulTextData(
                text: "PRACTICE ON",
                style: context.textStyles.titleMedium,
              ),
              ColorfulTextData(
                text: "REAL PROJECTS.",
                style: context.textStyles.titleMedium?.copyWith(
                  color: context.colors.primary,
                ),
              ),
            ],
            description:
                "Ready-to-use templates, contracts, quotes and checklists you'll use tomorrow morning — everything school never taught you.",
            buttonText: "SEE THE TOOLS",
            onButtonPressed: () {},
          ),
          Gap(8.h),
          HomeServicesListItem(
            imagePath: AssetsManager.homeServicesImg03,
            textOnShape: "START\nCAREER",
            title: [
              ColorfulTextData(
                text: "GET FOUND BY CLIENTS LOOKING",
                style: context.textStyles.titleMedium,
              ),
              ColorfulTextData(
                text: "FOR AN ARCHITECT.",
                style: context.textStyles.titleMedium?.copyWith(
                  color: context.colors.primary,
                ),
              ),
            ],
            description:
                "The skills are just the start. Linktura connects you to real clients searching for a professional — so your learning turns into actual paid work.",
            buttonText: "SEE HOW IT WORKS",
            onButtonPressed: () {},
          ),
        ],
      ),
    );
  }
}
