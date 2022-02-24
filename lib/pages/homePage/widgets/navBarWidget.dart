import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/helpers/sizeHelper.dart';
import 'package:my_portfolio/helpers/themeHelper.dart';
import 'package:my_portfolio/pages/models/navbarItem.dart';

class NavBarWidget extends StatelessWidget {
  final List<NavbarItem> navbarItems;
  final int activeIndex;
  const NavBarWidget({Key? key, required this.navbarItems, required this.activeIndex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeHelper themeHelper = ThemeHelper();
    SizeHelper sizeHelper = SizeHelper();

    double navBarHeight = sizeHelper.height! * 0.1;
    return Container(
      height: navBarHeight,
      width: sizeHelper.width,
      color: themeHelper.backgroundColor,
      child: Row(
        children: [
          SizedBox(
            height: navBarHeight,
            width: sizeHelper.width! * 0.05,
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Image.asset(
                "assets/logos/logo.png",
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          ConstrainedBox(
            constraints:
                BoxConstraints(maxHeight: navBarHeight, minHeight: navBarHeight, maxWidth: sizeHelper.width! * 0.1),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: AutoSizeText("Şekspir",
                    textAlign: TextAlign.left,
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w300,
                        color: themeHelper.primaryColor,
                        fontSize: sizeHelper.height! * 0.03)),
              ),
            ),
          ),
          const Spacer(),
          SizedBox(
            height: navBarHeight,
            width: (sizeHelper.width! * 0.1) * navbarItems.length,
            child: ListView.builder(
              itemBuilder: (context, index) {
                NavbarItem currentItem = navbarItems[index];
                return GestureDetector(
                  onTap: currentItem.onPressed,
                  child: SizedBox(
                    width: sizeHelper.width! * 0.1,
                    child: Center(
                        child: AutoSizeText(currentItem.title,
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w200,
                                color: activeIndex == index ? themeHelper.secondaryColor : themeHelper.onBackground,
                                fontSize: sizeHelper.height! * 0.02))),
                  ),
                );
              },
              scrollDirection: Axis.horizontal,
              itemCount: navbarItems.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
