import 'package:auto_size_text/auto_size_text.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/helpers/sizeHelper.dart';
import 'package:my_portfolio/helpers/themeHelper.dart';
import 'package:my_portfolio/pages/aboutPage/widgets/aboutMeWidget.dart';
import 'package:my_portfolio/pages/aboutPage/widgets/glowedContainer.dart';

class WorkDetails {
  final String name;
  final String imagePath;
  final String secondTitle;
  final String motto;
  final List<AboutMeWidget> detailsCards;
  final List<Color> colors;

  WorkDetails(
      {required this.name,
      required this.imagePath,
      required this.secondTitle,
      required this.motto,
      required this.detailsCards,
      required this.colors});
}

class WorkDetailsWidget extends StatelessWidget {
  final WorkDetails workDetails;

  const WorkDetailsWidget({Key? key, required this.workDetails}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeHelper themeHelper = ThemeHelper();
    SizeHelper sizeHelper = SizeHelper();
    return Container(
        height: (sizeHelper.height! - sizeHelper.height! * 0.1) * 0.87,
        width: sizeHelper.width,
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(width: sizeHelper.width! * 0.075),
                Container(
                  height: sizeHelper.height! * 0.7,
                  width: (sizeHelper.height! * 0.5) * 0.8,
                  //color: Colors.amber,
                  child: Stack(children: [
                    GlowedContainer(
                      gradientColors: workDetails.colors,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          height: sizeHelper.height! * 0.7,
                          width: sizeHelper.width! * 0.27,
                          child: Image.asset(
                            workDetails.imagePath,
                            alignment: Alignment.center,
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                      ),
                    )
                  ]),
                ),
                const Spacer(),
                Container(
                  height: sizeHelper.height! * 0.7,
                  width: sizeHelper.width! * 0.4,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: sizeHelper.height! * 0.1,
                        child: AutoSizeText(
                          workDetails.name,
                          maxLines: 1,
                          minFontSize: 1,
                          style: GoogleFonts.poppins(
                              fontSize: sizeHelper.height! * 0.075,
                              fontWeight: FontWeight.bold,
                              color: themeHelper.onBackground),
                        ),
                      ),
                      SizedBox(
                        height: sizeHelper.height! * 0.11,
                        width: sizeHelper.width! * 0.4,
                        child: AutoSizeText(
                          workDetails.secondTitle,
                          maxLines: 1,
                          minFontSize: 1,
                          style: GoogleFonts.poppins(
                              fontSize: sizeHelper.height! * 0.05,
                              fontWeight: FontWeight.bold,
                              color: themeHelper.onBackground),
                        ),
                      ),
                      SizedBox(
                        height: sizeHelper.height! * 0.1,
                        width: sizeHelper.width! * 0.4,
                        child: AutoSizeText(
                          workDetails.motto,
                          maxLines: 1,
                          minFontSize: 1,
                          style: GoogleFonts.poppins(
                              fontSize: sizeHelper.height! * 0.04,
                              fontWeight: FontWeight.w300,
                              color: themeHelper.secondaryColor),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          height: sizeHelper.height! * 0.3,
                          width: sizeHelper.width! * 0.4,
                          child: Swiper(
                            index: -1,
                            itemBuilder: (BuildContext context, int index) {
                              return workDetails.detailsCards.reversed.toList()[index];
                            },
                            itemCount: workDetails.detailsCards.length,
                            itemWidth: sizeHelper.width! * 0.4,
                            itemHeight: sizeHelper.height! * 0.3,
                            layout: SwiperLayout.TINDER,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(width: sizeHelper.width! * 0.075),
              ],
            ),
          ],
        ));
  }
}
