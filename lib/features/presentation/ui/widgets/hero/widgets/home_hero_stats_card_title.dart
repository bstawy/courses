import 'package:flutter/material.dart';

import '../../../../../../core/extension/theme_ext.dart';

class HomeHeroStatsCardTitle extends StatelessWidget {
  const HomeHeroStatsCardTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: "DON'T JUST LEARN THE THEORY. ",
        style: context.textStyles.displayLarge,
        children: [
          TextSpan(
            text: "LEARN HOW TO BUILD A CAREER",
            style: context.textStyles.displayLarge?.copyWith(
              color: context.colors.primary,
            ),
          ),
        ],
      ),
      textAlign: .center,
    );
  }
}
