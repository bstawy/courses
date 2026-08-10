import 'package:flutter/material.dart';

import '../../../../../../../core/extension/theme_ext.dart';
import '../../../../../../../core/widgets/colorful_text.dart';

class HomeHeroStatsCardTitle extends StatelessWidget {
  const HomeHeroStatsCardTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return ColorfulText(
      textData: [
        ColorfulTextData(text: "DON'T JUST LEARN THE THEORY."),
        ColorfulTextData(
          text: "LEARN HOW TO BUILD A CAREER",
          color: context.colors.primary,
        ),
      ],
    );
  }
}
