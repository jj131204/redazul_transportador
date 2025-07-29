import 'package:flutter/material.dart';
import '../../themes/fonts.dart';
import 'atomLogo.dart';
import 'atomText.dart';

class Atomdevelopedby extends StatefulWidget {
  const Atomdevelopedby({super.key});

  @override
  State<Atomdevelopedby> createState() => _AtomdevelopedbyState();
}

class _AtomdevelopedbyState extends State<Atomdevelopedby> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        atomText(text: 'Desarrollado por:', fontSize: scaledFontSize(context, 14.0),),
        SizedBox(height: 10.0,),
        atomLogoHeader(heightImg: 40.0,),
        SizedBox(height: 5.0,),
      ],
    );
  }
}