import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:gap/gap.dart';

import '../../../../../core/extension/theme_ext.dart';
import '../../../../../core/widgets/custom_chip.dart';

class HomeProfessionalHome extends StatelessWidget {
  const HomeProfessionalHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: .symmetric(horizontal: 24.w, vertical: 48.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomChip(label: 'THE PROFESSIONAL HOME'),
          Gap(4.h),
          Text(
            "A PROFESSIONAL HOME FOR ARCHITECTS AND DESIGNERS.",
            style: context.textStyles.headlineLarge,
          ),
        ],
      ),
    );
  }
}
