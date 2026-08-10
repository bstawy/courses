import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

import '../../../../../../../core/extension/theme_ext.dart';
import '../../../../../../../core/widgets/colorful_text.dart';

class HomeInsightsHeading extends StatelessWidget {
  const HomeInsightsHeading({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: .only(right: 16.w),
      child: ColorfulText(
        textData: [
          ColorfulTextData(
            text: "PROFESSIONAL KNOWLEDGE",
            style: context.textStyles.headlineMedium,
          ),
          ColorfulTextData(
            text: "YOU WON'T FIND",
            style: context.textStyles.headlineMedium?.copyWith(
              color: context.colors.primary,
            ),
          ),
          ColorfulTextData(
            text: "ON YOUTUBE.",
            style: context.textStyles.headlineMedium,
          ),
        ],
        textAlign: .start,
      ),
    );
  }
}
