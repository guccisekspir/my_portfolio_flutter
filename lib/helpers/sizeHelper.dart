import 'package:flutter/material.dart';

class SizeHelper {
  BuildContext? ccontext;
  double? width;
  double? height;
  double? navbarHeight;
  EdgeInsetsGeometry horizontalPadding = const EdgeInsets.symmetric(horizontal: 20);

  /// This is the  singleton constructor for the [SizeHelper] class.
  static final SizeHelper _sizeHelper = SizeHelper._internal();

  SizeHelper._internal();

  /// These are just an accepted predictions for the size of the screen.
  /// Because of responsive design.
  bool get isSmallScreen {
    return MediaQuery.of(ccontext!).size.width < 800;
  }

  bool get isLargeScreen {
    return MediaQuery.of(ccontext!).size.width > 800;
  }

  bool get isMediumScreen {
    return MediaQuery.of(ccontext!).size.width > 800 && MediaQuery.of(ccontext!).size.width < 1200;
  }

  factory SizeHelper({BuildContext? fetchedContext, bool? isTesting}) {
    /// We are pass the [BuildContext] in the [LandPage]
    /// We should avoid, every contructing situations from calculate [width] & [height]
    /// We should only define one time in first implemented context.
    ///
    if (isTesting != null) {
      _sizeHelper.width = 600;
      _sizeHelper.height = 1200;
    } else {
      if (fetchedContext != null) {
        _sizeHelper.ccontext = fetchedContext;
      } else {
        //size helper context null
      }
      if (_sizeHelper.width == null && _sizeHelper.height == null) {
        if (_sizeHelper.ccontext != null) {
          _sizeHelper.width = MediaQuery.of(_sizeHelper.ccontext!).size.width;
          _sizeHelper.height = MediaQuery.of(_sizeHelper.ccontext!).size.height;
          _sizeHelper.navbarHeight = MediaQuery.of(_sizeHelper.ccontext!).size.width < 800
              ? MediaQuery.of(_sizeHelper.ccontext!).size.height * 0.15
              : MediaQuery.of(_sizeHelper.ccontext!).size.height * 0.075;
        }
      }
    }

    return _sizeHelper;
  }
}
