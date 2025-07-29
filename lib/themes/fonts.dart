import 'dart:ui';

import 'package:flutter/material.dart';

import 'colors.dart';

double checkHeightScreen(context) {
  final height = MediaQuery.of(context).size.height - kToolbarHeight;
  return height;
}

double checkWidthScreen() {
  WidgetsFlutterBinding.ensureInitialized();
  // ignore: deprecated_member_use
  return window.physicalSize.width / window.devicePixelRatio;
}


double scaledFontSize(BuildContext context, double originalSize) {
  double screenWidth = MediaQuery.of(context).size.width;

  if (screenWidth <= 400) {
    double scale = screenWidth / 393;
    return originalSize * scale;
  }

  return originalSize;
}


class textAll {
  static TextStyle title = TextStyle(
    fontSize: 23.0,
    fontFamily: "NunitoBold",
    fontWeight: FontWeight.bold,
    color: colores.blue2,
  );

  static TextStyle subTitle = TextStyle(
    fontSize: 23.0,
    fontFamily: "NunitoBold",
    fontWeight: FontWeight.normal,
    color: colores.gray2
  );

  static TextStyle textGray  = TextStyle(
    fontSize: 23.0,
    fontFamily: "NunitoRegular",
    fontWeight: FontWeight.normal,
    color: colores.gray1,
  );
}