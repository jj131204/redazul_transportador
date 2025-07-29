import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../mobile/atoms/atomModalNew.dart';
import '../themes/colors.dart';
import '../themes/fonts.dart';
import 'BackButtonInterceptorShow.dart';

class cancelarFaenas extends StatefulWidget {
  final int idFaena;
  const cancelarFaenas({super.key, required this.idFaena});

  @override
  State<cancelarFaenas> createState() => _cancelarFaenasState();
}

class _cancelarFaenasState extends State<cancelarFaenas> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 8,
        shadowColor: colores.gray1,
        backgroundColor: colores.gray2,
        // padding: EdgeInsets.only(top: scaledFontSize(context, 15), left: scaledFontSize(context, 15), right: scaledFontSize(context, 15), bottom: scaledFontSize(context, 15)),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        )
      ),
      onPressed: (){
        verifyCancel();
      },
      child: Container(
        padding: EdgeInsets.only(top: scaledFontSize(context, 10.0), bottom: scaledFontSize(context, 10)),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: scaledFontSize(context, 32.0),
              child: Image.asset(
                'assets/images/barcoPesca.png',
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(width: scaledFontSize(context, 20)),
            Text("Cancelar la faena", style: TextStyle(color: colores.white, fontFamily: "NunitoBold", fontSize: scaledFontSize(context, 19)),)
          ],
        ),
      ),
    );
  }
  
  verifyCancel() {
    return showDialog(
      context: context,
      barrierDismissible: false, // Evitar el cierre al hacer clic fuera del cuadro de diálogo
      builder: (BuildContext context) {
        return BackButtonInterceptorShow(
          child: CustomModalPlus(
            title: 'Cancelar faena',
            descripcion:'¿Estas seguro que quieres cancelar la faena?',
            imagen: 'assets/images/alertInfo.png',
            colorModal: Color(0xffF98927),
            buttons: [
              ButtonData(
                texto: 'Cancelar',
                onPressed: () {
                  alertmodalclose(context);
                },
              ),
              ButtonData(
                texto: 'Aceptar',
                onPressed: () {
                  context.push('/home');
                },
              ),
            ],
          ),
        );
      },
    );
  }
}