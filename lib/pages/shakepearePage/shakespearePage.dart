import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/helpers/sizeHelper.dart';
import 'package:my_portfolio/helpers/themeHelper.dart';
import 'package:visibility_detector/visibility_detector.dart';

class ShakespearePage extends StatelessWidget {
  final VoidCallback func;
  final currentIndex;
  const ShakespearePage({Key? key, required this.func, required this.currentIndex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeHelper themeHelper = ThemeHelper();
    SizeHelper sizeHelper = SizeHelper();
    return VisibilityDetector(
      key: const Key('shakespeare-page'),
      onVisibilityChanged: (visibilityInfo) {
        var visiblePercentage = visibilityInfo.visibleFraction * 100;
        if (visiblePercentage > 51 && currentIndex != 3) {
          func();
        }

        debugPrint('Widget ${visibilityInfo.key} is ${visiblePercentage}% visible');
      },
      child: SizedBox(
        height: (sizeHelper.height! - sizeHelper.height! * 0.1),
        width: sizeHelper.width,
        // color: Colors.pink,
        child: Column(
          children: [
            SizedBox(
              height: sizeHelper.height! * 0.1,
            ),
            Row(
              children: [
                SizedBox(width: sizeHelper.width! * 0.075),
                SizedBox(
                  height: sizeHelper.height! * 0.4,
                  child: Image.asset("assets/logos/sekspir.png"),
                ),
                const Spacer(),
                SizedBox(
                  height: sizeHelper.height! * 0.7,
                  width: sizeHelper.width! * 0.4,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: sizeHelper.height! * 0.1,
                        child: AutoSizeText(
                          "Why",
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
                          "Shakespeare?",
                          maxLines: 1,
                          minFontSize: 1,
                          style: GoogleFonts.poppins(
                              fontSize: sizeHelper.height! * 0.075,
                              fontWeight: FontWeight.bold,
                              color: themeHelper.onBackground),
                        ),
                      ),
                      SizedBox(
                        height: sizeHelper.height! * 0.4,
                        width: sizeHelper.width! * 0.375,
                        child: AutoSizeText(
                          """I use the nickname Şekspir(Pronounce of Shakespeare) in most places. When I first met with Shakespeare, I suddenly felt like I was in a different universe. Much of what he writes seems to reveal feelings that I have not been able to put into words, or perhaps even thought about. Shakespeare awakens many feelings that I have but am not aware of and makes me feel safe. Because of these feelings, I am nicknamed Şekspir and I want to immortalize his works a little bit.""",
                          minFontSize: 15,
                          style: GoogleFonts.poppins(fontWeight: FontWeight.w200, color: themeHelper.onBackground),
                        ),
                      ),
                      SizedBox(width: sizeHelper.width! * 0.075),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
