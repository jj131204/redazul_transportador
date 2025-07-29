// estilos para los inputs: les agrega el color de fondo, el  border radius y su boxShadow
import 'package:flutter/material.dart';

import 'colors.dart';

class styleInputs {
  static BoxDecoration decorationInputs = BoxDecoration(
    color: Color(0xffffffff),
    borderRadius: BorderRadius.circular(20.0),
    boxShadow: [
      BoxShadow(
        color: Colors.black.withOpacity(0.2),
        spreadRadius: 2,
        blurRadius: 5,
        offset: Offset(0, 3),
      ),
    ],
  );

    static BoxDecoration decorationInputsBlue = BoxDecoration(
    color: colores.blue2,
    borderRadius: BorderRadius.circular(20.0),
    boxShadow: [
      BoxShadow(
        color: Colors.black.withOpacity(0.2),
        spreadRadius: 2,
        blurRadius: 5,
        offset: Offset(0, 3),
      ),
    ],
  );

  static BoxDecoration decorationCardTraceability = BoxDecoration(
    border: Border.all(
      color: Color(0xff0487D9),
      width: 2,
    ),
    borderRadius: BorderRadius.circular(10.0),
    boxShadow: [
      BoxShadow(
        color: colores.gray2.withOpacity(0.5),
        spreadRadius: 0,
        blurRadius: 10,
        offset: Offset(0, 5), // Desplazamiento hacia abajo
      ),
    ],
    color: colores.white
  );

  static EdgeInsets padingCardTraceability = EdgeInsets.all(15.0);
}