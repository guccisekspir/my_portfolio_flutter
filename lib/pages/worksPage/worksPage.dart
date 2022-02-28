import 'package:flutter/material.dart';
import 'package:my_portfolio/consts/gradientList.dart';
import 'package:my_portfolio/helpers/sizeHelper.dart';
import 'package:my_portfolio/helpers/themeHelper.dart';
import 'package:my_portfolio/pages/aboutPage/widgets/aboutMeWidget.dart';
import 'package:my_portfolio/pages/worksPage/widgets/bottomNavWidget.dart';
import 'package:my_portfolio/pages/worksPage/widgets/worksDetailWidget.dart';
import 'package:visibility_detector/visibility_detector.dart';

class WorksPage extends StatelessWidget {
  final VoidCallback func;
  final int currentIndex;

  const WorksPage({Key? key, required this.func, required this.currentIndex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeHelper themeHelper = ThemeHelper();
    SizeHelper sizeHelper = SizeHelper();
    PageController pageController = PageController();

    return VisibilityDetector(
      key: const Key('works-page'),
      onVisibilityChanged: (visibilityInfo) {
        var visiblePercentage = visibilityInfo.visibleFraction * 100;
        if (visiblePercentage > 51 && currentIndex != 1) {
          func();
        }

        debugPrint('Widget ${visibilityInfo.key} is $visiblePercentage% visible');
      },
      child: SizedBox(
        height: sizeHelper.height! - sizeHelper.height! * 0.1,
//      color: Colors.red,
        child: Column(
          children: [
            SizedBox(
              height: (sizeHelper.height! - sizeHelper.height! * 0.1) * 0.87,
              child: PageView(
                allowImplicitScrolling: true,
                scrollDirection: Axis.horizontal,
                controller: pageController,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  WorkDetailsWidget(
                    workDetails: WorkDetails(
                        colors: [Colors.pinkAccent, Colors.purpleAccent],
                        name: "Smoody",
                        secondTitle: "Social Digital Jukebox",
                        motto: "Share Your Mood",
                        imagePath: "assets/logos/mascotWithJukebox.png",
                        detailsCards: [
                          AboutMeWidget(
                              gradient: gradientLinks[4],
                              title: "What is Smoody?",
                              description:
                                  "Smoody is an application that offers a jukebox service for venues. Smoody allows users to choose the next song and also helps them socialize."),
                          AboutMeWidget(
                              gradient: gradientLinks[3],
                              title: "My role in Smoody",
                              description:
                                  "I'm the owner of Smoody's idea and I also develop mobile applications. In addition to this, I am also interested in the business model and business plans. Besides, I am the pair coder of the backend side and the supervisor of the design side."),
                          AboutMeWidget(
                              gradient: gradientLinks[2],
                              title: "Technologies I use",
                              description:
                                  "An application that uses a lot of Socket technology due to its Smoody backend architecture. Socket connections and management in the application dominate. Apart from that, I used the BLoC structure for the state management. There are more than 20 BLoC structures in my application. Apart from this, I also used a Firebase service such as Firebase Cloud Messaging, Inapp Messaging. Since it is a dynamic application, we frequently used Rive technology within the application."),
                        ]),
                  ),
                  WorkDetailsWidget(
                    workDetails: WorkDetails(
                        colors: [const Color(0XFF71f3a7), Colors.purpleAccent],
                        name: "Dropla",
                        secondTitle: "Portal for Crypto Exchange Campaigns",
                        motto: "One click, free crypto",
                        imagePath: "assets/logos/dropla.png",
                        detailsCards: [
                          AboutMeWidget(
                              gradient: gradientLinks[0],
                              title: "What is Dropla?",
                              description:
                                  "Dropla is an application that allows you to follow the campaigns organized by crypto exchanges from a one place. In addition, it prevents users from wasting extra time by showing how these campaigns are made."),
                          AboutMeWidget(
                              gradient: gradientLinks[1],
                              title: "My role in Dropla",
                              description:
                                  "I'm the owner of Dropla's idea.My main role is to develop the mobile application. Apart from that, I also work on viral campaign and spread. I can say that it was a very nice side project for me."),
                          AboutMeWidget(
                              gradient: gradientLinks[2],
                              title: "Technologies I use",
                              description:
                                  "We do not have a backend in Dropla. So I have to do all the backend work myself. From Authoraztion to database management, I designed it by myself. At this stage, I can say that I used all serverless services of Firebase. Firebase Auth, Firebase Firestore,Firebase Storage,Cloud Messaging,Inapp Messaging etc."),
                        ]),
                  ),
                  WorkDetailsWidget(
                    workDetails: WorkDetails(
                        colors: [
                          Colors.purpleAccent,
                          const Color(0XFF00C02C),
                        ],
                        name: "Gain&Grind",
                        secondTitle: "Social Media for BodyBuilders",
                        motto: "Evolve Together",
                        imagePath: "assets/logos/ggLogo.png",
                        detailsCards: [
                          AboutMeWidget(
                              gradient: gradientLinks[3],
                              title: "What is G&G ?",
                              description:
                                  "G&G is a micro-focus social media application where athletes share their body progress. G&G allows users to find similar body improvements and see which nutritional plans they apply, which exercises, which supplements they use while making this evolution."),
                          AboutMeWidget(
                              gradient: gradientLinks[4],
                              title: "My role in G&G",
                              description:
                                  "I'm the owner of G&G's idea. My main role is to develop the mobile application and design the whole architecture."),
                          AboutMeWidget(
                              gradient: gradientLinks[5],
                              title: "Technologies I use",
                              description:
                                  "I used Tensorflow Lite's image processing function to detect nudity. We do not have a backend at G&G. So I have to do all the backend work myself. From Authoraztion to database management, I designed it by myself. At this stage, I can say that I used all serverless services of Firebase. Firebase Auth, Firebase Firestore,Firebase Storage,Cloud Messaging,Inapp Messaging etc."),
                        ]),
                  ),
                  WorkDetailsWidget(
                    workDetails: WorkDetails(
                        colors: [
                          Colors.cyan,
                          const Color(0XFF00C02C),
                        ],
                        name: "Kıtmir",
                        secondTitle: "Breed Specific Disease Detection",
                        motto: "Consciously Adopting",
                        imagePath: "assets/logos/kitmirLogo.png",
                        detailsCards: [
                          AboutMeWidget(
                              gradient: gradientLinks[6],
                              title: "What is Kıtmir?",
                              description:
                                  "Kıtmir is a social responsibility project. Kıtmir is a mobile application that shows the breed-specific congenital diseases of dogs. Thanks to image processing, it detects the breed of the dog and shows what congenital diseases it has and important issues to be considered. "),
                          AboutMeWidget(
                              gradient: gradientLinks[7],
                              title: "My role in Kıtmir",
                              description:
                                  "I'm the owner of Kıtmir's idea. My main role is to develop the mobile application and design the whole architecture."),
                          AboutMeWidget(
                              gradient: gradientLinks[1],
                              title: "Technologies I use",
                              description:
                                  "The most important part of this project is getting to know the dog breeds. For this I used TF Lite, the mobile version of TensorFlow. With the model I developed with TF, I determine the breed of the dog photographed and extract the dog's information from my own database. I used Firebase's Firestore service for database management."),
                        ]),
                  ),
                ],
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: SizedBox(
                height: (sizeHelper.height! - sizeHelper.height! * 0.1) * 0.1,
                width: sizeHelper.width!,
                child: Row(
                  children: [
                    const Spacer(),
                    BottomNavWidget(
                        function: () {
                          pageController.animateToPage(0,
                              duration: const Duration(milliseconds: 400), curve: Curves.easeIn);
                        },
                        assetPath: "assets/logos/smoodyLogo.png",
                        color: const Color(0XFFFf0062)),
                    BottomNavWidget(
                        function: () {
                          pageController.animateToPage(1,
                              duration: const Duration(milliseconds: 400), curve: Curves.easeIn);
                        },
                        assetPath: "assets/logos/dropla.png",
                        color: const Color(0XFF71f3a7)),
                    BottomNavWidget(
                        function: () {
                          pageController.animateToPage(2,
                              duration: const Duration(milliseconds: 400), curve: Curves.easeIn);
                        },
                        assetPath: "assets/logos/ggLogo.png",
                        color: const Color(0XFF00C02C)),
                    BottomNavWidget(
                        function: () {
                          pageController.animateToPage(3,
                              duration: const Duration(milliseconds: 400), curve: Curves.easeIn);
                        },
                        assetPath: "assets/logos/kitmirLogo.png",
                        color: Colors.cyanAccent),
                    const Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
