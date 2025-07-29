import 'package:flutter/material.dart';

import '../../themes/fonts.dart';
import '../../themes/sizedBox.dart';
import 'atomSelect.dart';

class atomQuestionSelect extends StatefulWidget {
  final String textAtom;
  final List<basicSelect> selectAtom;
  final Function(String) functionSelect;
  const atomQuestionSelect({super.key, required this.textAtom, required this.selectAtom, required this.functionSelect});

  @override
  State<atomQuestionSelect> createState() => _atomQuestionSelectState();
}

class _atomQuestionSelectState extends State<atomQuestionSelect> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(widget.textAtom, style: TextStyle(color: Color(0xff0095CD),fontSize: scaledFontSize(context, 20.0), fontFamily: "NunitoBold"), textAlign: TextAlign.center),
        sizedBoxAll.sizedBoxHeight2,
        atomSelect(itemsSelect: widget.selectAtom, nameSelect: "Elige una opción", onChanged: (value){
          widget.functionSelect(value.toString());
        },)
      ],
    );
  }
}