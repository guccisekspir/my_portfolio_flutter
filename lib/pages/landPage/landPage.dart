import 'package:flutter/material.dart';
import 'package:my_portfolio/helpers/sizeHelper.dart';
import 'package:my_portfolio/helpers/themeHelper.dart';
import 'package:my_portfolio/pages/homePage/homePage.dart';

/// In this page we should implement every initialization and controlls functions,
/// Like auth state or init the class [SizeHelper], [ThemeHelper] etc.
class LandPage extends StatelessWidget {
  const LandPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeHelper(fetchedContext: context);
    SizeHelper(fetchedContext: context);
    return const HomePage();
  }
}
