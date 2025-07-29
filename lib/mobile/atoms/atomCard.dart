
import 'package:flutter/material.dart';

import '../../themes/colors.dart';
import '../../themes/fonts.dart';

// Parametros
// Obligatorios
  // TextInput1: Primer texto de la tarjeta
  // TextInput2: Segundo texto de la tarjeta
  // colorCard: Color de fondo de la tarjeta
  // ImageCard: Icono de la tarjeta
  // nameFunction: funcion que ejecuta la tarjeta
  // Completed: si quieres que aparezca un icono de check (true o false)
// Opcionales
  // existImage: si no existe una imagen se pondra una por defecto
  //  colorLetter1: Color del primer texto (por defecto sera gris)
  // colorLetter2: Color del segundo texto (por defecto sera gris)


class atomCardRowBorderDouble extends StatefulWidget {
  final String textInput1;
  final String textInput2;
  final Color colorCard;
  final String? imageCard;
  final bool? existImage;
  final void Function() nameFunction;
  final bool completed;
  final Color? colorLetter1;
  final Color? colorLetter2;
  final Color colorBorder;
  final double? fontSize1;
  final double? fontSize2;
  final double? widthBorder;
  final double? widthCard;
  final double? widthImage;
  final double? widthText;
  final bool? seeShadow;
  final bool? noBorder;


  const atomCardRowBorderDouble(
      {super.key,
      required this.textInput1,
      required this.textInput2,
      required this.colorCard,
      this.imageCard,
      this.existImage,
      required this.nameFunction,
      required this.completed,
      this.colorLetter1,
      required this.colorBorder,
      this.fontSize1,
      this.fontSize2,
      this.colorLetter2,
      this.widthBorder,
      this.widthCard,
      this.widthImage,
      this.widthText,
      this.noBorder,
      this.seeShadow});

  @override
  State<atomCardRowBorderDouble> createState() => _atomCardRowBorderDoubleState();
}

class _atomCardRowBorderDoubleState extends State<atomCardRowBorderDouble> {
  @override
  Widget build(BuildContext context) {
    obtenerAnchoConPorcentaje(ancho, porcentaje, int number) {
      if (ancho != null) {
        return ancho * porcentaje;
      } else {
        if(number == 1){
          return ((MediaQuery.of(context).size.width * 0.90) * 0.40) - (0.16 * 210);
        }else{

        }
        // Puedes manejar el caso cuando ancho es nulo, por ejemplo, devolviendo un valor predeterminado.
        return ((MediaQuery.of(context).size.width * 0.90) * 0.60) - (0.16 * 210);
      }
    }

    final double1 = widget.fontSize1;
    final double2 = widget.fontSize2;

    final widthBorder = widget.widthBorder;

    return  GestureDetector(
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            widget.seeShadow != null  && widget.seeShadow == true ? BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3),
            ): BoxShadow(
              color: Colors.black.withOpacity(0.0),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3),
            )
          ],
          color: widget.colorCard,
          border: widget.noBorder == null || widget.noBorder == false ? Border.all(
            color: widget.colorBorder,
            width: widthBorder == null ? 2.0 : widthBorder,
          ) : null,
          borderRadius: BorderRadius.circular(10.0),
        ),
        padding: EdgeInsets.only(top: 0.05 * 210, bottom: 0.05 * 210, left: 0.08 * 210, right: 0.08 * 210),
        width: widget.widthCard ?? 400.0,
        // height: 110.0,
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width * 0.90,
        ),
        child: Stack(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                widget.imageCard != null ? Container(
                  width: 120.0,
                  constraints: BoxConstraints(
                    maxWidth: widget.widthImage != null ? obtenerAnchoConPorcentaje(widget.widthCard, widget.widthImage, 1) : obtenerAnchoConPorcentaje(widget.widthCard, 0.25, 1),
                  ),
                  child: widget.existImage != null ? 
                  
                  Image.network(
                    'https://trazul.redazul.co/content/productiveUnits/${widget.imageCard}',
                    // Aquí reemplaza 'URL_DE_LA_IMAGEN' con la URL de la imagen que deseas mostrar
                    fit: BoxFit.contain, 
                  ) :
                  Image.asset(
                    'assets/images/${widget.imageCard}',
                    fit: BoxFit.contain, 
                  ),
                ): SizedBox.shrink(),
                widget.imageCard != null ? SizedBox(width: 15) : SizedBox.shrink(),
                Expanded(
                  // width: 260.0,
                  // constraints: BoxConstraints(
                  //   maxWidth:  widget.widthText != null ? obtenerAnchoConPorcentaje(widget.widthCard, widget.widthText, 2) : obtenerAnchoConPorcentaje(widget.widthCard, 0.60, 2),
                  // ),
                  child: Center(
                    child: Column(
                      children: [
                        Text(
                          widget.textInput1,
                          style: widget.colorLetter1 == null ? TextStyle(color: colores.gray2, fontSize: scaledFontSize(20.0), fontFamily: 'NunitoBold',): 
                          TextStyle(color: widget.colorLetter1, fontSize: double1 == null ? scaledFontSize(20.0) : scaledFontSize(double1), fontFamily: 'NunitoBold'),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 10.0,),
                        Text(
                          widget.textInput2,
                          style: widget.colorLetter2 == null ? TextStyle(color: colores.gray2, fontSize: scaledFontSize(20.0), fontFamily: 'NunitoRegular'): 
                          TextStyle(color: widget.colorLetter2, fontSize: double2 == null ? scaledFontSize(20.0) : scaledFontSize(double2), fontFamily: 'NunitoRegular'),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            widget.completed ? 
            Positioned(
              top: 0, // Píxeles desde la parte superior
              right: 0, // Píxeles desde la izquierda
              child: Container(
                child: Image.asset(
                    'assets/images/ok.png',
                    height: 24.0,
                    // fit: BoxFit.contain, 
                  ),
              ),
            )
            :
            Container(),
          ],
        ),
      ),
      onTap: () {
        widget.nameFunction();
      });
  }
}



class atomCardRow extends StatefulWidget {
  final String textInput;
  final Color colorCard;
  final Color? colorLetter1;
  final String imageCard;
  final void Function() nameFunction;
  final bool completed;
  final double? widthCard;
  final double? fontSize;
  final double? widthImage;
  final double? widthText;

  const atomCardRow(
    {
      super.key,
      required this.textInput,
      required this.colorCard,
      this.colorLetter1,
      required this.imageCard,
      required this.nameFunction,
      required this.completed,
      this.widthCard,
      this.fontSize,
      this.widthImage,
      this.widthText
    });

  @override
  State<atomCardRow> createState() => _atomCardRowState();
}

class _atomCardRowState extends State<atomCardRow> {

  // double widthCard = widget.widthCard != null ? widget.widthCard : 400.0;

  @override
  Widget build(BuildContext context) {

    double obtenerAnchoConPorcentaje(double? ancho, double porcentaje) {

      if (ancho != null) {
        return ancho * porcentaje;
      } else {
        return (MediaQuery.of(context).size.width * 0.90) * porcentaje;
      }
    }

    return  GestureDetector(
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
          color: widget.colorCard,
          borderRadius: BorderRadius.circular(10.0),
        ),
        padding: EdgeInsets.only(top: 0.10 * 210, bottom: 0.10 * 210, left: 0.08 * 210, right: 0.08 * 210),
        width: widget.widthCard != null ? 400.0 : widget.widthCard,
        // height: 110.0,
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width * 0.90,
        ),
        child: Stack(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: widget.widthImage != null ? obtenerAnchoConPorcentaje(widget.widthCard, widget.widthImage!) : obtenerAnchoConPorcentaje(widget.widthCard, 0.25),
                  constraints: BoxConstraints(
                    maxWidth: 100,
                    maxHeight: 70
                  ),
                  child: Image.asset(
                    'assets/images/${widget.imageCard}',
                    fit: BoxFit.contain,
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Text(
                      widget.textInput,
                      style: TextStyle(color: widget.colorLetter1 ?? colores.white, fontSize: widget.fontSize ?? scaledFontSize(19.0), fontFamily: 'NunitoBold'),
                      textAlign: TextAlign.center,
                    ),
                  ),
                )
              ],
            ),
            widget.completed ? 
            Positioned(
              top: 0, // Píxeles desde la parte superior
              right: 0, // Píxeles desde la izquierda
              child: Container(
                child: Image.asset(
                    'assets/images/ok.png',
                    height: 24.0,
                    // fit: BoxFit.contain, 
                  ),
              ),
            )
            :
            Container(),
          ],
        ),
      ),
      onTap: () {
        widget.nameFunction();
      });
  }
}