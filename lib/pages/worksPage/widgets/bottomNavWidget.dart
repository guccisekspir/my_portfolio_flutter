import 'package:flutter/material.dart';
import 'package:my_portfolio/helpers/sizeHelper.dart';
import 'package:my_portfolio/helpers/themeHelper.dart';

class BottomNavWidget extends StatelessWidget {
  final VoidCallback function;
  final String assetPath;
  final Color color;
  const BottomNavWidget({Key? key, required this.function, required this.assetPath, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeHelper themeHelper = ThemeHelper();
    SizeHelper sizeHelper = SizeHelper();
    return GestureDetector(
      onTap: function,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4.0),
        child: Container(
          height: (sizeHelper.height! - sizeHelper.height! * 0.1) * 0.1,
          width: (sizeHelper.height! - sizeHelper.height! * 0.1) * 0.1,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: color,
              //  boxShadow: [BoxShadow(color: color, offset: Offset(0, 2), blurRadius: 2)],
              image: DecorationImage(
                image: AssetImage(assetPath),
                fit: BoxFit.fill,
              )),
        ),
      ),
    );
  }
}
