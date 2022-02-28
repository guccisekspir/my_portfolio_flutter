import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/helpers/sizeHelper.dart';
import 'package:my_portfolio/helpers/themeHelper.dart';

class AwardContainer extends StatelessWidget {
  final String title;
  final String description;
  final String image;
  const AwardContainer({Key? key, required this.title, required this.description, required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeHelper themeHelper = ThemeHelper();
    SizeHelper sizeHelper = SizeHelper();
    return SizedBox(
      height: sizeHelper.height! * 0.3,
      width: sizeHelper.width! * 0.3,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: sizeHelper.height! * 0.25,
              width: sizeHelper.width! * 0.3,
              decoration: BoxDecoration(color: themeHelper.secondaryColor, borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  const Spacer(),
                  SizedBox(
                    width: (sizeHelper.width! * 0.3) * 0.4,
                    child: AutoSizeText(
                      title,
                      maxLines: 1,
                      style: GoogleFonts.poppins(
                        fontSize: sizeHelper.height! * 0.02,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const Spacer(),
                  SizedBox(
                    width: (sizeHelper.width! * 0.3) * 0.8,
                    child: AutoSizeText(
                      description,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        fontSize: sizeHelper.height! * 0.02,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const Spacer(),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: SizedBox(
              height: sizeHelper.height! * 0.1,
              child: Image.asset(image),
            ),
          )
        ],
      ),
    );
  }
}
