import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:gap/gap.dart';

import '../../../../../core/widgets/marquee.dart';
import 'widgets/home_services_heading.dart';
import 'widgets/home_services_list.dart';

class HomeServices extends StatelessWidget {
  const HomeServices({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: .symmetric(vertical: 48.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          HomeServicesHeading(),
          Gap(24.h),
          ImageMarquee(
            imagePaths: const [
              'assets/images/home_marquee_sketch_up_logo.png',
              'assets/images/home_marquee_autodesk_3ds_max_logo.png',
              'assets/images/home_marquee_autodesk_autocad_logo.png',
              'assets/images/home_marquee_chaos_v_ray_logo.png',
              'assets/images/home_marquee_autodesk_revit_logo.png',
            ],
          ),
          Gap(32.h),
          HomeServicesList(),
        ],
      ),
    );
  }
}
