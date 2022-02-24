import 'package:auto_size_text/auto_size_text.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/consts/gradientList.dart';
import 'package:my_portfolio/helpers/sizeHelper.dart';
import 'package:my_portfolio/helpers/themeHelper.dart';
import 'package:my_portfolio/pages/aboutPage/widgets/aboutMeWidget.dart';
import 'package:my_portfolio/pages/aboutPage/widgets/glowedContainer.dart';
import 'package:visibility_detector/visibility_detector.dart';

class AboutPage extends StatelessWidget {
  final VoidCallback func;
  final int currentIndex;
  const AboutPage({Key? key, required this.func, required this.currentIndex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeHelper themeHelper = ThemeHelper();
    SizeHelper sizeHelper = SizeHelper();
    List<AboutMeWidget> aboutMeWidgets = [
      AboutMeWidget(
          gradient: gradientLinks[0],
          title: "Flutter Enthusiast",
          description:
              "Since high school, I wanted to develop a mobile application to realize the projects in my mind. I met Flutter in my first year of college, at the time Flutter was in beta. Since then, I have devoted every moment to understanding and learning Flutter."),
      AboutMeWidget(
          gradient: gradientLinks[5],
          title: "Pill for Depression",
          description:
              "When I'm feeling bad, I usually find myself developing a project with Flutter. For me, Flutter is more of a meditation than a professional, an output of my instinct to leave a mark to universe before I die."),
      AboutMeWidget(
          gradient: gradientLinks[1],
          title: "Entrepreneurial Spirit",
          description:
              "NKG, Smoody, Dropla are all projects where I reveal my entrepreneurial side. I like to act as if I am the owner of the project and act with an entrepreneurial spirit wherever I go. In my nature, in addition to my basic duty in my formation, I have to bring innovative and creative solutions."),
      AboutMeWidget(
          gradient: gradientLinks[2],
          title: "Duty Man",
          description:
              "When I joined the project, the part that is not thought about what will happen is usually my part. I will make all the sacrifices to fulfill my duty, if necessary, I will be sleep deprived. Because the sense of success is no different than food for my soul."),
      AboutMeWidget(
          gradient: gradientLinks[3],
          title: "Everything for Success",
          description:
              "The main goal in most organizations I have entered so far has been success. It's very important to me that something I do succeeds and leaves a mark."),
      AboutMeWidget(
          gradient: gradientLinks[4],
          title: "Failures Are No Problem",
          description:
              "Even though I care so much about success, defeats don't affect me that much. Failure is for me nothing more than a motivation to achieve success and a good experience.."),
      AboutMeWidget(
          gradient: gradientLinks[3],
          title: "Litlle Secret",
          description: "My beard was blue. Ehe :-) Thats why Shakepeare's beard is blue."),
    ];

    return VisibilityDetector(
      key: const Key('about-page'),
      onVisibilityChanged: (visibilityInfo) {
        var visiblePercentage = visibilityInfo.visibleFraction * 100;
        if (visiblePercentage > 51 && currentIndex != 0) {
          func();
        }

        debugPrint('Widget ${visibilityInfo.key} is ${visiblePercentage}% visible');
      },
      child: Container(
        height: sizeHelper.height!,
        width: sizeHelper.width,
        color: themeHelper.backgroundColor,
        child: Column(
          children: [
            SizedBox(
              height: sizeHelper.height!,
              //color: Colors.amber,
              child: Column(
                children: [
                  const Spacer(),
                  SizedBox(
                      height: sizeHelper.height! * 0.7,
                      width: sizeHelper.width,
                      // color: Colors.red,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(width: sizeHelper.width! * 0.075),
                              SizedBox(
                                height: sizeHelper.height! * 0.7,
                                width: sizeHelper.width! * 0.4,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: sizeHelper.height! * 0.1,
                                      child: AutoSizeText(
                                        "Hi",
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
                                      child: AutoSizeText(
                                        "I'm Cagri",
                                        maxLines: 1,
                                        minFontSize: 1,
                                        style: GoogleFonts.poppins(
                                            fontSize: sizeHelper.height! * 0.075,
                                            fontWeight: FontWeight.bold,
                                            color: themeHelper.onBackground),
                                      ),
                                    ),
                                    SizedBox(
                                      height: sizeHelper.height! * 0.1,
                                      width: sizeHelper.width! * 0.4,
                                      child: AutoSizeText(
                                        "Mobile Application Developer",
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
                                      child: SizedBox(
                                        height: sizeHelper.height! * 0.3,
                                        width: sizeHelper.width! * 0.4,
                                        child: Swiper(
                                          itemBuilder: (BuildContext context, int index) {
                                            return aboutMeWidgets[index];
                                          },
                                          itemCount: aboutMeWidgets.length,
                                          itemWidth: sizeHelper.width! * 0.4,
                                          itemHeight: sizeHelper.height! * 0.3,
                                          layout: SwiperLayout.TINDER,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              const Spacer(),
                              SizedBox(
                                height: sizeHelper.height! * 0.7,
                                width: sizeHelper.width! * 0.4,
                                //color: Colors.amber,
                                child: Stack(children: [
                                  const GlowedContainer(),
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: SizedBox(
                                      height: sizeHelper.height! * 0.7,
                                      width: sizeHelper.height! * 0.5,
                                      child: Image.asset(
                                        "assets/logos/avatar.png",
                                        fit: BoxFit.fitHeight,
                                      ),
                                    ),
                                  )
                                ]),
                              ),
                              SizedBox(width: sizeHelper.width! * 0.075),
                            ],
                          ),
                        ],
                      )),
                  const Spacer(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
