import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:gap/gap.dart';

import 'widgets/home_pricing_heading.dart';
import 'widgets/home_pricing_list.dart';

class HomePricing extends StatelessWidget {
  const HomePricing({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: .symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: .center,
        children: [HomePricingHeading(), Gap(24.h), HomePricingList()],
      ),
    );
  }
}
