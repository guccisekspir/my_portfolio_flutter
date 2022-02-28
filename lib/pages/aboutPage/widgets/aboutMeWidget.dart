import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/helpers/sizeHelper.dart';
import 'package:my_portfolio/helpers/themeHelper.dart';

class AboutMeWidget extends StatelessWidget {
  final List<Color> gradient;
  final String title;
  final String description;
  const AboutMeWidget({Key? key, required this.gradient, required this.title, required this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeHelper themeHelper = ThemeHelper();
    SizeHelper sizeHelper = SizeHelper();
    double cardWidth = sizeHelper.width! * 0.4;
    double cardHeight = sizeHelper.isSmallScreen ? sizeHelper.height! * 0.4 : sizeHelper.height! * 0.3;
    return Container(
      height: cardHeight,
      width: cardWidth,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), gradient: LinearGradient(colors: gradient)),
      child: Column(
        children: [
          SizedBox(
              width: cardWidth * 0.9,
              height: sizeHelper.isSmallScreen ? cardHeight * 0.05 : cardHeight * 0.1,
              child: AutoSizeText(title,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(color: themeHelper.onBackground, fontWeight: FontWeight.bold))),
          SizedBox(
            width: cardWidth * 0.9,
            height: sizeHelper.isSmallScreen ? cardHeight * 0.8 : cardHeight * 0.65,
            child: AutoSizeText(
              description,
              minFontSize: 4,
              style: GoogleFonts.poppins(color: themeHelper.onBackground, fontWeight: FontWeight.w400),
            ),
          ),
          const Spacer(),
          Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                  padding: const EdgeInsets.only(bottom: 2.0, right: 4.0),
                  child: ConstrainedBox(
                    constraints: BoxConstraints(maxWidth: cardWidth, maxHeight: cardHeight * 0.1),
                    child: AutoSizeText(
                      "Swipe for others -->",
                      style: GoogleFonts.poppins(fontWeight: FontWeight.w600, color: themeHelper.onBackground),
                    ),
                  )))
        ],
      ),
    );
  }
}
