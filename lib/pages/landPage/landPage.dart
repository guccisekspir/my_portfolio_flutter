import 'package:flutter/material.dart';
import 'package:my_portfolio/helpers/sizeHelper.dart';
import 'package:my_portfolio/helpers/themeHelper.dart';

/// In this page we should implement every initialization and controlls functions,
/// Like auth state or init the class [SizeHelper], [ThemeHelper] etc.
class LandPage extends StatelessWidget {
  const LandPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeHelper themeHelper = ThemeHelper(fetchedContext: context);
    SizeHelper sizeHelper = SizeHelper(fetchedContext: context);
    return Container();
  }
}
