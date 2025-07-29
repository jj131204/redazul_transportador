import 'package:flutter/material.dart';

import '../../themes/colors.dart';
import '../../themes/fonts.dart';

// Descripción
  //  Este atomo sirve para agregar las franajs con los checkbox
// Paramtros
  // Obligatorios
    // nameVariable: Variable a la que se la va a asignar el true o false (Boolean)
    // Text: Texto de la 'tarjeta'
    // backgroundColor: Color de fondo
    // functionClick: funcicion que se ejecutara cuando clicken el checkbox (Se utilizara para asignarle el valor a la variable que se va a enviar con el formulario)
  // Opcionales:
    // BorderRadius: Paramtero para agregarle un borderRadius a la tarjeta (Si no se le va a agregar no se mandar el parametro)

class atomOptionsSelected extends StatefulWidget {
  final bool nameVariable;
  final String text;
  final Color backgroundColor;
  final Function(bool) functionCLick;
  final BorderRadius? borderRadius;
  
  const atomOptionsSelected({super.key, required this.nameVariable, required this.text, required this.backgroundColor, required this.functionCLick, this.borderRadius});

  @override
  State<atomOptionsSelected> createState() => _atomOptionsSelectedState();
}

class _atomOptionsSelectedState extends State<atomOptionsSelected> {

  @override
  Widget build(BuildContext context) {

    bool trueFalse = widget.nameVariable;

    return Container(
      decoration: BoxDecoration(
        color: widget.backgroundColor,
        borderRadius: widget.borderRadius ?? null,
      ),
      
      padding: EdgeInsets.only(top: 15.0, left: MediaQuery.of(context).size.height * 0.02, right: MediaQuery.of(context).size.height * 0.02, bottom: 15.0),
      child: Row(
        children: [
          GestureDetector(
            onTap: (){
              setState(() {
                if(trueFalse == true){
                  trueFalse = false;
                }else{
                  trueFalse = true;
                }

                widget.functionCLick(trueFalse);
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
                    ? colores.orange
                    : Color(0xffffffff),
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
          SizedBox(width: MediaQuery.of(context).size.height * 0.02,),
          // atomText(text: "Pertenezco a la comunidad LGTBIQ+.", colorText: colores.white, )
          Flexible(
            child: Text(widget.text, style: TextStyle(
              fontSize: scaledFontSize(context,18.0),
              fontFamily: "NunitoRegular",
              fontWeight: FontWeight.normal,
              color: colores.white,)
            ),
          )
        ],
      ),
    );
  }
}