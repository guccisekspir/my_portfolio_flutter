import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icons.dart';
import 'package:my_portfolio/helpers/sizeHelper.dart';
import 'package:my_portfolio/helpers/themeHelper.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialWidgets extends StatelessWidget {
  final String title;
  final IconData icon;
  final String url;
  const SocialWidgets({Key? key, required this.title, required this.icon, required this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeHelper themeHelper = ThemeHelper();
    SizeHelper sizeHelper = SizeHelper();
    return GestureDetector(
      onTap: () {
        launch(url);
      },
      child: Container(
        height: sizeHelper.height! * 0.1,
        width: sizeHelper.width! * 0.2,
        decoration: BoxDecoration(
            color: themeHelper.primaryColor.withOpacity(0.2),
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: themeHelper.primaryColor)),
        child: Row(
          children: [
            Icon(icon, color: themeHelper.primaryColor, size: sizeHelper.height! * 0.1),
            SizedBox(
              width: (sizeHelper.width! * 0.2 - sizeHelper.height! * 0.1) * 0.95,
              child: AutoSizeText(
                title,
                maxLines: 1,
                minFontSize: 1,
                wrapWords: false,
                overflow: TextOverflow.fade,
                style: GoogleFonts.poppins(color: themeHelper.primaryColor, fontWeight: FontWeight.w600),
              ),
            )
          ],
        ),
      ),
    );
  }
}
