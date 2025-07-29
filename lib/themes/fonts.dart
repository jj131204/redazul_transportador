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

double scaledFontSize(double originalSize) {
  // Obtén el ancho de la pantalla
  double screenWidth = window.physicalSize.width / window.devicePixelRatio;
  double widthPage = checkWidthScreen();
  double scale;
  // Define un factor de escala (puedes ajustar esto según tus necesidades)
  if(widthPage <= 400){
    scale = screenWidth / 393;  // Por ejemplo, se asume que el diseño se basa en un ancho de pantalla de 360 puntos.
    // Escala el tamaño de fuente original
    double scaledSize = originalSize * scale;

    return scaledSize;
  }
  
  return originalSize;
  
}

class textAll {
  static TextStyle title = TextStyle(
    fontSize: scaledFontSize(23.0),
    fontFamily: "NunitoBold",
    fontWeight: FontWeight.bold,
    color: colores.blue2,
  );

  static TextStyle subTitle = TextStyle(
    fontSize: scaledFontSize(23.0),
    fontFamily: "NunitoBold",
    fontWeight: FontWeight.normal,
    color: colores.gray2
  );

  static TextStyle textGray  = TextStyle(
    fontSize: scaledFontSize(18.0),
    fontFamily: "NunitoRegular",
    fontWeight: FontWeight.normal,
    color: colores.gray1,
  );
}