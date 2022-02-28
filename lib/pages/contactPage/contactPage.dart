import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icons.dart';
import 'package:my_portfolio/helpers/sizeHelper.dart';
import 'package:my_portfolio/helpers/themeHelper.dart';
import 'package:my_portfolio/pages/contactPage/widgets/socialWidget.dart';
import 'package:visibility_detector/visibility_detector.dart';

class ContactPage extends StatelessWidget {
  final VoidCallback func;
  final int currentIndex;
  const ContactPage({Key? key, required this.func, required this.currentIndex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeHelper themeHelper = ThemeHelper();
    SizeHelper sizeHelper = SizeHelper();
    return VisibilityDetector(
      key: const Key('contact-page'),
      onVisibilityChanged: (visibilityInfo) {
        var visiblePercentage = visibilityInfo.visibleFraction * 100;
        if (visiblePercentage > 51 && currentIndex != 4) {
          func();
        }

        debugPrint('Widget ${visibilityInfo.key} is $visiblePercentage% visible');
      },
      child: SizedBox(
        height: (sizeHelper.height! - sizeHelper.height! * 0.1),
        width: sizeHelper.width,
        child: Column(
          children: [
            const Spacer(),
            SizedBox(
              height: sizeHelper.height! * 0.1,
              width: sizeHelper.width! * 0.7,
              child: AutoSizeText(
                "You can reach me on the platforms below or check out the other things I do.",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(color: themeHelper.primaryColor, fontWeight: FontWeight.w600, fontSize: 50),
              ),
            ),
            SizedBox(height: sizeHelper.height! * 0.1),
            Wrap(
              spacing: 40,
              runSpacing: 40,
              alignment: WrapAlignment.center,
              children: [
                const SocialWidgets(
                    title: "@GucciSekspir", icon: LineIcons.github, url: "https://github.com/guccisekspir"),
                const SocialWidgets(
                    title: "@GucciSekspir",
                    icon: LineIcons.stackOverflow,
                    url: "https://stackoverflow.com/users/13353594/guccisekspir"),
                const SocialWidgets(
                    title: "@Şekspir",
                    icon: LineIcons.googlePlay,
                    url: "https://play.google.com/store/apps/developer?id=Şekspir"),
                const SocialWidgets(
                    title: "@Şekspir",
                    icon: LineIcons.appStore,
                    url: "https://apps.apple.com/tm/developer/sekspir-development/id1513360952"),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: sizeHelper.isSmallScreen ? sizeHelper.height! * 0.05 : sizeHelper.height! * 0.1,
                    width: sizeHelper.isSmallScreen ? sizeHelper.width! * 0.6 : sizeHelper.width! * 0.2,
                    decoration: BoxDecoration(
                        color: themeHelper.primaryColor.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: themeHelper.primaryColor)),
                    child: Row(
                      children: [
                        Icon(Icons.mail,
                            color: themeHelper.primaryColor,
                            size: sizeHelper.isSmallScreen ? sizeHelper.height! * 0.05 : sizeHelper.height! * 0.1),
                        SizedBox(
                          height: sizeHelper.isSmallScreen ? sizeHelper.height! * 0.05 : sizeHelper.height! * 0.1,
                          width: (sizeHelper.isSmallScreen
                              ? sizeHelper.width! * 0.6
                              : sizeHelper.width! * 0.2 -
                                  (sizeHelper.isSmallScreen ? sizeHelper.height! * 0.05 : sizeHelper.height! * 0.1)),
                          child: Center(
                            child: AutoSizeText(
                              "cagri@sekspir.net",
                              maxLines: 1,
                              minFontSize: 1,
                              wrapWords: false,
                              overflow: TextOverflow.fade,
                              style: GoogleFonts.poppins(color: themeHelper.primaryColor, fontWeight: FontWeight.w600),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
