import 'package:flutter/material.dart';
import 'package:my_portfolio/helpers/sizeHelper.dart';
import 'package:my_portfolio/helpers/themeHelper.dart';
import 'package:my_portfolio/pages/aboutPage/aboutPage.dart';
import 'package:my_portfolio/pages/awardsPage/awardsPage.dart';
import 'package:my_portfolio/pages/contactPage/contactPage.dart';
import 'package:my_portfolio/pages/homePage/widgets/navBarWidget.dart';
import 'package:my_portfolio/pages/models/navbarItem.dart';
import 'package:my_portfolio/pages/shakepearePage/shakespearePage.dart';
import 'package:my_portfolio/pages/worksPage/worksPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ThemeHelper themeHelper = ThemeHelper();
  SizeHelper sizeHelper = SizeHelper();
  int activeIndex = 0;
  ScrollController scrollController = ScrollController();

  late double fullsizeExceptNavbar;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    debugPrint((sizeHelper.height! * 0.1).toString() + " toplam height ");
    fullsizeExceptNavbar = (sizeHelper.height! - (sizeHelper.height! * 0.1));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: sizeHelper.height,
        width: sizeHelper.width,
        color: themeHelper.backgroundColor,
        child: Stack(
          children: [
            SingleChildScrollView(
              controller: scrollController,
              child: Column(
                children: [
                  AboutPage(
                    currentIndex: activeIndex,
                    func: () {
                      setState(() {
                        activeIndex = 0;
                      });
                    },
                  ),
                  WorksPage(
                    currentIndex: activeIndex,
                    func: () {
                      setState(() {
                        activeIndex = 1;
                      });
                    },
                  ),
                  AwardsPage(
                    currentIndex: activeIndex,
                    func: () {
                      setState(() {
                        activeIndex = 2;
                      });
                    },
                  ),
                  ShakespearePage(
                    currentIndex: activeIndex,
                    func: () {
                      setState(() {
                        activeIndex = 3;
                      });
                    },
                  ),
                  ContactPage(
                    currentIndex: activeIndex,
                    func: () {
                      setState(() {
                        activeIndex = 4;
                      });
                    },
                  )
                ],
              ),
            ),
            NavBarWidget(
              activeIndex: activeIndex,
              navbarItems: [
                NavbarItem(
                    title: "About",
                    onPressed: () {
                      scrollController.animateTo(((sizeHelper.height! - (sizeHelper.height! * 0.1)) * 0),
                          duration: const Duration(milliseconds: 300), curve: Curves.easeIn);

                      setState(() {
                        activeIndex = 0;
                      });
                    }),
                NavbarItem(
                    title: "Works",
                    onPressed: () {
                      scrollController.animateTo(((sizeHelper.height! - (sizeHelper.height! * 0.1)) * 1),
                          duration: const Duration(milliseconds: 300), curve: Curves.easeIn);

                      setState(() {
                        activeIndex = 1;
                      });
                    }),
                NavbarItem(
                    title: "Awards",
                    onPressed: () {
                      scrollController.animateTo(((sizeHelper.height! - (sizeHelper.height! * 0.1)) * 2),
                          duration: const Duration(milliseconds: 300), curve: Curves.easeIn);

                      setState(() {
                        activeIndex = 2;
                      });
                    }),
                NavbarItem(
                    title: "Why Shakespeare",
                    onPressed: () {
                      scrollController.animateTo(((sizeHelper.height! - (sizeHelper.height! * 0.1)) * 3),
                          duration: const Duration(milliseconds: 300), curve: Curves.easeIn);

                      setState(() {
                        activeIndex = 3;
                      });
                    }),
                NavbarItem(
                    title: "Contact",
                    onPressed: () {
                      scrollController.animateTo(((sizeHelper.height! - (sizeHelper.height! * 0.1)) * 4),
                          duration: const Duration(milliseconds: 300), curve: Curves.easeIn);

                      setState(() {
                        activeIndex = 4;
                      });
                    })
              ],
            ),
          ],
        ),
      ),
    );
  }
}
