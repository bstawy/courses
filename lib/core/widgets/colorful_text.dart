import 'package:flutter/material.dart';

import '../extension/theme_ext.dart';

class ColorfulTextData {
  final String text;
  final Color? color;
  final TextStyle? style;

  ColorfulTextData({required this.text, this.color, this.style});
}

class ColorfulText extends StatelessWidget {
  final List<ColorfulTextData> textData;
  final TextAlign textAlign;

  const ColorfulText({
    super.key,
    required this.textData,
    this.textAlign = .center,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: "${textData[0].text} ",
        style:
            textData[0].style ??
            context.textStyles.displayLarge?.copyWith(color: textData[0].color),
        children: textData.sublist(1).map((data) {
          return TextSpan(
            text: "${data.text} ",
            style:
                data.style ??
                context.textStyles.displayLarge?.copyWith(color: data.color),
          );
        }).toList(),
      ),
      textAlign: textAlign,
    );
  }
}
