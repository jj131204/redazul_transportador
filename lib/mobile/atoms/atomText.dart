import 'package:flutter/material.dart';
import '../../themes/fonts.dart';
// ------------------------------------------------
// -------Titulos-----

// Obligatorios:
// title: Titulo a mostrar

// Opcional
// colorTitle: color del titulo

class atomTitle extends StatefulWidget {
  final String title;
  final Color? colorTitle;

  const atomTitle({super.key, required this.title, this.colorTitle});

  @override
  State<atomTitle> createState() => _atomTitleState();
}

class _atomTitleState extends State<atomTitle> {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints:
          BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.90),
      child: Text(
        widget.title,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: scaledFontSize(23.0),
          fontFamily: "NunitoBold",
          fontWeight: FontWeight.bold,
          color:  widget.colorTitle ??Color(0xff0095CD),
        ),
      ),
    );
  }
}

// ------------------------------------------------
// -------Subtitulos-----
// Obligatorio
// subtitle: texto a mostrar
// Opcional
// colorSubtitle: color del subtitulo
class atomSubtitle extends StatefulWidget {

  final String subtitle;
  final Color? colorSubtitle;

  const atomSubtitle({super.key, required this.subtitle, this.colorSubtitle});
  @override
  State<atomSubtitle> createState() => _atomSubtitleState();
}

class _atomSubtitleState extends State<atomSubtitle> {
  @override
  Widget build(BuildContext context) {
    return Container(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width * 0.95
        ),
        child: Text(
          widget.subtitle,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: scaledFontSize(20.0),
            fontFamily: "NunitoBold",
            fontWeight: FontWeight.normal,
            color: widget.colorSubtitle ?? Color(0xff0095CD)
          ),
        ),
    );
  }
}



// ------------------------------------------------
// -------Textos-----
// Obligatorio
// text: texto a mostrar
// Opcional
// colorText: color del texto
// fontSize: Tamaño de la letra

class atomText extends StatefulWidget {
  final String text;
  final Color? colorText;
  final double? fontSize;
  final String? fontFamily;
  final TextAlign? alignment;
  final TextOverflow? overflow;
  const atomText({super.key, required this.text, this.colorText,  this.fontSize, this.fontFamily, this.alignment, this.overflow});

  @override
  State<atomText> createState() => _atomTextState();
}

class _atomTextState extends State<atomText> {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints:
          BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.90),
      child: Text(
        widget.text,
        textAlign: widget.alignment ?? TextAlign.center,
        style: TextStyle(
            fontSize: widget.fontSize ?? scaledFontSize(18.0),
            fontFamily: widget.fontFamily ?? "NunitoRegular",
            fontWeight: FontWeight.normal,
            color: widget.colorText ??Color(0xff939393)),
            overflow: widget.overflow ?? TextOverflow.visible,
      ),
    );
  }
}