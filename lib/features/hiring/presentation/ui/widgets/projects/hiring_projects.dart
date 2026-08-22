import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:gap/gap.dart';

import '../../../../../../core/extension/theme_ext.dart';
import 'project_card/hiring_project_card.dart';

class HiringProjects extends StatelessWidget {
  const HiringProjects({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .start,
      children: [
        Text("Recent Projects", style: context.textStyles.titleMedium),
        Gap(12.h),
        HiringProjectCard(
          tags: ["3D Designer", "Interior Design"],
          timeAgo: "47 Min ago",
          title:
              "Senior CGI / 3D Animator for Scientific & Investor-Grade Visuals (Ag-Tech)",
          priceRange: ["\$2,500", "\$5,000"],
          description:
              "We are an ag-tech company developing a patented hydrogel and nano-technology atform that improves crop yield, reduces",
          onViewDetails: () {},
          onApplyNow: () {},
        ),
        Gap(10.h),
        HiringProjectCard(
          tags: ["3D Designer", "Interior Design"],
          timeAgo: "47 Min ago",
          title:
              "Senior CGI / 3D Animator for Scientific & Investor-Grade Visuals (Ag-Tech)",
          priceRange: ["\$2,500", "\$5,000"],
          description:
              "We are an ag-tech company developing a patented hydrogel and nano-technology atform that improves crop yield, reduces",
          onViewDetails: () {},
          onApplyNow: () {},
        ),
      ],
    );
  }
}
