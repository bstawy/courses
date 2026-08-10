import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:gap/gap.dart';

import '../../../../../core/extension/theme_ext.dart';
import '../../../../../core/widgets/colorful_text.dart';
import '../../../../../core/widgets/custom_chip.dart';
import '../../../../../core/widgets/marquee.dart';

class HomeProfessionalHome extends StatelessWidget {
  const HomeProfessionalHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: .symmetric(vertical: 48.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: .symmetric(horizontal: 24.w),
            child: Column(
              children: [
                CustomChip(label: 'THE PROFESSIONAL HOME'),
                Gap(4.h),
                SizedBox(
                  width: 0.8.sw,
                  child: ColorfulText(
                    textData: [
                      ColorfulTextData(text: "A"),
                      ColorfulTextData(
                        text: "PROFESSIONAL",
                        color: context.colors.primary,
                      ),
                      ColorfulTextData(
                        text: "HOME FOR ARCHITECTS AND DESIGNERS.",
                      ),
                    ],
                  ),
                ),
                Gap(16.h),
                SizedBox(
                  width: 0.85.sw,
                  child: Text(
                    "School ends the day you get your diploma. Your career starts long before that. At Linktura you don't just watch lessons — you gain real tools, connect with leading mentors, and build a professional presence that gets you hired.",
                    style: context.textStyles.bodyLarge,
                    textAlign: .center,
                  ),
                ),
                Gap(24.h),
              ],
            ),
          ),
          ImageMarquee(
            imagePaths: const [
              'assets/images/home_marquee_sketch_up_logo.png',
              'assets/images/home_marquee_autodesk_3ds_max_logo.png',
              'assets/images/home_marquee_autodesk_autocad_logo.png',
              'assets/images/home_marquee_chaos_v_ray_logo.png',
              'assets/images/home_marquee_autodesk_revit_logo.png',
            ],
          ),
        ],
      ),
    );
  }
}
