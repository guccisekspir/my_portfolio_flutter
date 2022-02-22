import 'package:flutter/material.dart';
import 'package:my_portfolio/helpers/sizeHelper.dart';

class ThemeHelper {
  Color backgroundColor = const Color(0XFF142850);
  Color surfaceColor = const Color(0XFF27496D);
  // Color lightSurfaceColor = const Color(0XFF303030);
  Color primaryColor = const Color(0XFF00A8CC);
  Color secondaryColor = const Color(0XFFFF4C29);

  Color onBackground = const Color(0XFFFAF9F6);
  Color onSurface = const Color(0XFFFAF9F6);
  Color onSurfaceLight = const Color(0XFFFAF9F6);
  Color onPrimary = Colors.black;
  Color onSecondary = Colors.black;

  //Color accentSpring = const Color(0xFF00FFBB);
  //Color accentAqua = const Color(0xFF00FFFF);
  //Color accentFushia = const Color(0xFFEF0386);

  BuildContext? ccontext;
  TextTheme? themeData;
  Sizes sizes = Sizes();

  SizeHelper sizeHelper = SizeHelper();

  static final ThemeHelper _themeHelper = ThemeHelper._internal();

  ThemeHelper._internal();

  factory ThemeHelper({BuildContext? fetchedContext}) {
    //LnadPage'de context'i verdiğimiz için sonraki yerlerde
    //tekrar tekrar çağırmamak için bunu yapıyoruz
    if (fetchedContext != null) {
      _themeHelper.ccontext = fetchedContext;

      _themeHelper.themeData ??= Theme.of(fetchedContext).textTheme;
    }

    return _themeHelper;
  }
}

class Sizes {
  SizeHelper sizeHelper = SizeHelper();

  Sizes();
}
