import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:gap/gap.dart';

import '../../../../../../core/extension/theme_ext.dart';
import '../../../../../../core/widgets/app_expansion_tile.dart';
import '../../../../../../core/widgets/colorful_text.dart';

class HomeFaqs extends StatelessWidget {
  const HomeFaqs({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0.w),
      child: Column(
        children: [
          ColorfulText(
            textData: [
              ColorfulTextData(
                text: "FREQUENTLY",
                style: context.textStyles.headlineMedium?.copyWith(
                  color: context.colors.primary,
                ),
              ),
              ColorfulTextData(
                text: "ASKED QUESTIONS",
                style: context.textStyles.headlineMedium,
              ),
            ],
            textAlign: .start,
          ),
          Gap(24.h),
          AppExpansionTile(
            title:
                "Why pay, when there are free videos on YouTube and Telegram?",
            children: [
              "It's launching soon: clients searching for an architect or designer browse a project gallery and reach out to you directly — no commission taken. Personal Plan members get first access the day it goes live.",
            ],
          ),
          Gap(6.h),
          AppExpansionTile(
            title: "What's included in the Personal Plan?",
            children: [
              "It's launching soon: clients searching for an architect or designer browse a project gallery and reach out to you directly — no commission taken. Personal Plan members get first access the day it goes live.",
            ],
          ),
          Gap(6.h),
          AppExpansionTile(
            title: "How does Linktura actually bring me clients?",
            children: [
              "It's launching soon: clients searching for an architect or designer browse a project gallery and reach out to you directly — no commission taken. Personal Plan members get first access the day it goes live.",
            ],
          ),
          Gap(6.h),
          AppExpansionTile(
            title: "Is the content for beginners or experienced architects?",
            children: [
              "It's launching soon: clients searching for an architect or designer browse a project gallery and reach out to you directly — no commission taken. Personal Plan members get first access the day it goes live.",
            ],
          ),
          Gap(6.h),
          AppExpansionTile(
            title: "Is the content in Hebrew or Arabic?",
            children: [
              "It's launching soon: clients searching for an architect or designer browse a project gallery and reach out to you directly — no commission taken. Personal Plan members get first access the day it goes live.",
            ],
          ),
        ],
      ),
    );
  }
}
