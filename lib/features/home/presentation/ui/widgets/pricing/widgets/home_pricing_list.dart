import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:gap/gap.dart';

import 'pricing_list_item/home_pricing_list_item.dart';

class HomePricingList extends StatelessWidget {
  const HomePricingList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HomePricingListItem(
          planTitle: "Basic — single course",
          planPrice: ["EGP 49.90"],
          planBenefits: [
            "Access to one course of your choice",
            "Unlimited lifetime viewing",
            "Certificate of completion",
          ],
          planButtonText: "PICK A COURSE",
          onPickCourse: () {},
        ),
        Gap(8.h),
        HomePricingListItem(
          planTitle: "Personal Plan",
          planPrice: ["EGP 89.99", "/Month"],
          planBenefits: [
            "Full access to all courses",
            "Masterclasses with industry leaders",
            "Audio library + Pro templates",
            "\"Ask an Architect\" access",
            "Early access to the client lead engine",
            "Ongoing content updates",
          ],
          planButtonText: "START 14 DAYS FREE",
          onPickCourse: () {},
          variant: "dark",
        ),
        Gap(8.h),
        HomePricingListItem(
          planTitle: "Studio / Team",
          planPrice: ["EGP 249.99", "/Month"],
          planBenefits: [
            "Everything In Personal",
            "Up to 5 team members",
            "Team management + progress reports",
            "Tax invoice",
          ],
          planButtonText: "TALK TO US",
          onPickCourse: () {},
        ),
      ],
    );
  }
}
