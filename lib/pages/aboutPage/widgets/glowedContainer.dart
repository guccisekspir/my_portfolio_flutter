import 'package:flutter/material.dart';
import 'package:my_portfolio/helpers/sizeHelper.dart';
import 'package:my_portfolio/helpers/themeHelper.dart';

class GlowedContainer extends StatelessWidget {
  final List<Color> gradientColors;
  const GlowedContainer({Key? key, this.gradientColors = const [Colors.cyan, Colors.red]}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeHelper themeHelper = ThemeHelper();
    SizeHelper sizeHelper = SizeHelper();
    return Stack(
      children: [
        Align(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Container(
              height: sizeHelper.height! * 0.5,
              width: sizeHelper.height! * 0.5,
              decoration: BoxDecoration(
                  color: gradientColors[0],
                  shape: BoxShape.circle,
                  boxShadow: [BoxShadow(color: gradientColors[0], blurRadius: 10, spreadRadius: 1)]),
            ),
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Container(
              height: sizeHelper.height! * 0.5,
              width: sizeHelper.height! * 0.5,
              decoration: BoxDecoration(
                  color: gradientColors[1],
                  shape: BoxShape.circle,
                  boxShadow: [BoxShadow(color: gradientColors[1], blurRadius: 10, spreadRadius: 1)]),
            ),
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Container(
            height: sizeHelper.height! * 0.5,
            width: sizeHelper.height! * 0.5,
            decoration: BoxDecoration(color: themeHelper.onBackground, shape: BoxShape.circle),
          ),
        )
      ],
    );
  }
}
