import 'package:flutter/material.dart';
import 'package:my_portfolio/helpers/sizeHelper.dart';
import 'package:my_portfolio/pages/awardsPage/awardContainer.dart';
import 'package:visibility_detector/visibility_detector.dart';

class AwardsPage extends StatelessWidget {
  final VoidCallback func;
  final int currentIndex;
  const AwardsPage({Key? key, required this.func, required this.currentIndex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeHelper sizeHelper = SizeHelper();
    return VisibilityDetector(
      key: const Key('awards-page'),
      onVisibilityChanged: (visibilityInfo) {
        var visiblePercentage = visibilityInfo.visibleFraction * 100;
        if (visiblePercentage > 51 && currentIndex != 2) {
          func();
        }

        debugPrint('Widget ${visibilityInfo.key} is ${visiblePercentage}% visible');
      },
      child: Container(
        height: (sizeHelper.height! - sizeHelper.height! * 0.1),
        width: sizeHelper.width,
        child: Column(
          children: [
            SizedBox(
              height: sizeHelper.height! * 0.05,
            ),
            Row(
              children: [
                const Spacer(),
                SizedBox(
                  height: sizeHelper.height! * 0.2,
                  width: sizeHelper.width! * 0.1,
                  child: Image.asset("assets/logos/trophy.png"),
                ),
                SizedBox(
                  height: sizeHelper.height! * 0.2,
                  width: sizeHelper.width! * 0.1,
                  child: Image.asset("assets/logos/trophy.png"),
                ),
                SizedBox(
                  height: sizeHelper.height! * 0.2,
                  width: sizeHelper.width! * 0.1,
                  child: Image.asset("assets/logos/trophy.png"),
                ),
                SizedBox(
                  height: sizeHelper.height! * 0.2,
                  width: sizeHelper.width! * 0.1,
                  child: Image.asset("assets/logos/trophy.png"),
                ),
                const Spacer(),
              ],
            ),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              alignment: WrapAlignment.center,
              children: const [
                AwardContainer(
                    title: "Youth Hackathon 1th Place",
                    description:
                        "With my team, we win the 24-hour hackathon organized by the Ministry of Youth and Sports, where more than 5000 teams applied!",
                    image: "assets/logos/emblem1.png"),
                AwardContainer(
                    title: "KYK Hackathon 2th Place",
                    description:
                        "We came 2nd with my team in the 24-hour hackathon organized by the Kredi Yurtlar Kurumu!",
                    image: "assets/logos/emblem2.png"),
                AwardContainer(
                    title: "NASA SpaceApp Winner",
                    description:
                        "With my team, we became People Choice Winners at the SpaceApps Hackathon organized by NASA!",
                    image: "assets/logos/emblem1.png"),
                AwardContainer(
                    title: "Ulaşımın Geleceği 3th Place",
                    description:
                        "We came 3rd with my team in the online Ideathon organized by the Ministry of Transport.!",
                    image: "assets/logos/emblem2.png")
              ],
            ),
          ],
        ),
      ),
    );
  }
}
