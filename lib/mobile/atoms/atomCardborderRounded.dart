import 'package:flutter/material.dart';

import '../../themes/colors.dart';
import '../../themes/fonts.dart';

class atomCardborderRounded extends StatefulWidget {
  final String textInput;
  final Color colorCard;
  final String imageCard;
  final void Function() nameFunction;
  final String? nameWidget;
  final bool completed;

  const atomCardborderRounded(
      {super.key,
      required this.textInput,
      required this.colorCard,
      required this.imageCard,
      required this.nameFunction,
      required this.completed,
      this.nameWidget});

  @override
  State<atomCardborderRounded> createState() => _atomCardborderRoundedState();
}

class _atomCardborderRoundedState extends State<atomCardborderRounded> {
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      child: Container(
        decoration: BoxDecoration(
          color: widget.colorCard,
          borderRadius: BorderRadius.circular(50.0),
          boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        padding: EdgeInsets.only(top: 0.05 * 70, bottom: 0.05 * 70, left: 0.06 * 210, right: 0.06 * 210),
        width: 400.0,
        height: 70.0,
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width * 0.90,
        ),
        child: Stack(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 0.10 * 400,
                  child: Image.asset(
                    'assets/images/${widget.imageCard}',
                    fit: BoxFit.contain, 
                  ),
                ),
                Container(
                  width: 0.70 * 400.0,
                  child: Center(
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        widget.textInput,
                        style: TextStyle(color: colores.white, fontSize: scaledFontSize(context, 25.0), fontFamily: 'NunitoBold', fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                )
              ],
            ),
            // widget.completed ? 
            // Positioned(
            //   top: 0, // Píxeles desde la parte superior
            //   right: 0, // Píxeles desde la izquierda
            //   child: Container(
            //     child: Image.asset(
            //         'assets/images/ImgTrazul/ok.png',
            //         height: 24.0,
            //         // fit: BoxFit.contain, 
            //       ),
            //   ),
            // )
            // :
            // Container(),
          ],
        ),
      ),
      onTap: () {
        widget.nameFunction();
      });
  }
}
