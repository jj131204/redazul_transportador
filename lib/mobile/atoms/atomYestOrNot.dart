
import 'package:flutter/material.dart';

import '../../themes/colors.dart';
import '../../themes/fonts.dart';
import '../../themes/sizedBox.dart';

class atomYesOrNot extends StatefulWidget {
  final  String textAtom;
  final Function(bool) functionAtom;
  final  bool? optionSelected;
  const atomYesOrNot({super.key, required  this.textAtom,  required this.functionAtom, this.optionSelected});

  @override
  State<atomYesOrNot> createState() => _atomYesOrNotState();
}

class _atomYesOrNotState extends State<atomYesOrNot> {

  @override
  Widget build(BuildContext context) {
    bool trueFalse = widget.optionSelected ??  true;

    return Column(
      children: [
        Text(widget.textAtom, style: TextStyle(color: Color(0xff0095CD),fontSize: scaledFontSize(20.0), fontFamily: "NunitoBold"), textAlign: TextAlign.center),
        sizedBoxAll.sizedBoxHeight2,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              children: [
                Text("Si", style: TextStyle(color: Color(0xff0095CD), fontSize: scaledFontSize(20.0), fontFamily: "NunitoBold"),),
                SizedBox(width: 10.0,),
                GestureDetector(
                onTap: (){
                  setState(() {
                    if(trueFalse == true){
                      trueFalse = false;
                    }else{
                      trueFalse = true;
                    }
                    widget.functionAtom(trueFalse);
                  });
                },
                child: Container(
                  // Personaliza el Checkbox usando un Container
                  width: 35.0,
                  height: 35.0,
                  constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width * 0.80,
                    maxHeight:MediaQuery.of(context).size.width * 0.80
                  ),
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(5.0),
                    color: trueFalse
                        ? colores.blue1
                        : colores.white,
                    border: Border.all(
                        color: colores.white),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: trueFalse
                  ? Icon(
                      Icons.check,
                      size: 24.0,
                      color: Colors.white,
                    )
                  : Icon(
                      Icons.check_box_outline_blank,
                      size: 24.0,
                      color: Colors.transparent,
                    )
                ),
              ),
              ],
            ),
            Row(
              children: [
                Text("No", style: TextStyle(color: Color(0xff0095CD), fontSize: scaledFontSize(20.0), fontFamily: "NunitoBold"),),
                SizedBox(width: 10.0,),
                GestureDetector(
                onTap: (){
                  setState(() {
                    if(trueFalse == true){
                      trueFalse = false;
                    }else{
                      trueFalse = true;
                    }

                    // widget.functionCLick(trueFalseSecond);
                  });
                },
                child: Container(
                  // Personaliza el Checkbox usando un Container
                  width: 35.0,
                  height: 35.0,
                  constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width * 0.80,
                    maxHeight:MediaQuery.of(context).size.width * 0.80
                  ),
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(5.0),
                    color: trueFalse
                        ? Color(0xffffffff)
                        : colores.blue1,
                    border: Border.all(
                        color: Color(0xffffffff)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: trueFalse
                  ? Icon(
                      Icons.check_box_outline_blank,
                      size: 24.0,
                      color: Colors.transparent
                    )
                  : Icon(
                      Icons.check,
                      size: 24.0,
                      color: Colors.white,
                    )
                ),
              ),
              ],
            )
          ],
        ),
      ],
    );
  }
}