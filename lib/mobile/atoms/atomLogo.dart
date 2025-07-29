import 'package:flutter/material.dart';

import '../../themes/fonts.dart';
import '../../themes/sizedBox.dart';
import 'atomText.dart';
class atomLogo extends StatefulWidget {
  final double heightImg;

  const atomLogo({super.key, required this.heightImg});

  @override
  State<atomLogo> createState() => _atomLogoState();
}

class _atomLogoState extends State<atomLogo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxWidth: MediaQuery.of(context).size.width * 0.5,
      ),
      child: Image.asset(
        'assets/images/logo-TrazAzul.png',
        height: widget.heightImg,
      ),
    );
  }
}

class atomLogoWidth extends StatefulWidget {
  final double widthImage;

  const atomLogoWidth({super.key, required this.widthImage});

  @override
  State<atomLogoWidth> createState() => _atomLogoWidthState();
}

class _atomLogoWidthState extends State<atomLogoWidth> {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        // maxWidth: MediaQuery.of(context).size.width * 0.5,
      ),
      child: Image.asset(
        'assets/images/logo-TrazAzul.png',
        width: widget.widthImage,
      ),
    );
  }
}




class atomLogoMiPescao extends StatefulWidget {
  final double heightImg;

  const atomLogoMiPescao({super.key, required this.heightImg});

  @override
  State<atomLogoMiPescao> createState() => _atomLogoMiPescaoState();
}

class _atomLogoMiPescaoState extends State<atomLogoMiPescao> {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxWidth: MediaQuery.of(context).size.width * 0.5,
      ),
      child: Image.asset(
        'assets/images/logomiPescao.png',
        height: widget.heightImg,
      ),
    );
  }
}

class atomLogoMiPescao1 extends StatefulWidget {
  const atomLogoMiPescao1({super.key});

  @override
  State<atomLogoMiPescao1> createState() => _atomLogoMiPescao1State();
}

class _atomLogoMiPescao1State extends State<atomLogoMiPescao1> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        atomText(text: 'Desarrollado por:', fontSize: scaledFontSize(context, 16.0),),
        sizedBoxAll.sizedBoxHeight3,
        Image.asset(
          'assets/images/logo-RedAzul.png',
          width: checkWidthScreen() * 0.3,
        ),
        // SizedBox(width: 10.0,)
        sizedBoxAll.sizedBoxHeight3,
      ],
    );
  }
}


class AtomLogoRedAzul extends StatefulWidget {
  final double? widthLogo;
  const AtomLogoRedAzul({super.key, this.widthLogo});

  @override
  State<AtomLogoRedAzul> createState() => _AtomLogoRedAzulState();
}

class _AtomLogoRedAzulState extends State<AtomLogoRedAzul> {
  
  @override
  Widget build(BuildContext context) {
    double width = widget.widthLogo ?? 0.30;
    return Column(
      children: [
        Container(
          width:  checkWidthScreen() * width,
          constraints: BoxConstraints(
            maxWidth: 100.0,
          ),
          child: Image.asset(
            'assets/images/logo-RedAzul.png',
            
          ),
        ),
        // SizedBox(width: 10.0,)
      ],
    );
  }
}


class atomLogoHeader extends StatefulWidget {
  final double heightImg;

  const atomLogoHeader({super.key, required this.heightImg});

  @override
  State<atomLogoHeader> createState() => _atomLogoHeaderState();
}

class _atomLogoHeaderState extends State<atomLogoHeader> {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxWidth: MediaQuery.of(context).size.width * 0.5,
      ),
      child: Image.asset(
        'assets/images/logo-RedAzul.png',
        height: widget.heightImg,
      ),
    );
  }
}