import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:redazul_transportador/mobile/widgets/GeneralConfiguration.dart';

import '../../themes/colors.dart';
import '../../themes/fonts.dart';
import '../atoms/atomButton.dart';
import '../atoms/atomDeveloperBy.dart';
import '../atoms/atomInputs.dart';
import '../atoms/atomLogo.dart';

class RecoverPassword extends StatefulWidget {
  const RecoverPassword({super.key});

  @override
  State<RecoverPassword> createState() => _RecoverPasswordState();
}

class _RecoverPasswordState extends State<RecoverPassword> {
  @override
  Widget build(BuildContext context) {
    return GeneralConfiguration(
      content: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AtomLogoRedAzul(),
          Text("Ingresa tu correo electrónico y te enviaremos un código para que recuperes el acceso a tu cuenta.", style: textAll.title.copyWith(fontSize: scaledFontSize(context, 25.0), color: colores.blue1),textAlign: TextAlign.center,),                        
          atomInputsForm(textInput: "Correo electronico", typeKey: TextInputType.emailAddress),
          atomButtonGrayForm(text: "Enviar código", onPressed: (){}),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(right: 5.0),
                child: Text(
                  "¿Ya tienes cuenta?",
                  style: TextStyle(
                      color: Color(0xff0095CD),
                      fontSize: scaledFontSize(context, 20.0),
                      fontFamily: "NunitoRegular",
                      fontWeight: FontWeight.normal),
                ),
              ),
              GestureDetector(
                onTap: () {
                  context.push('/');
                },
                child: Container(
                  decoration: const BoxDecoration(
                      border: Border(
                    bottom: BorderSide(
                      color: Color(0xff0095CD),
                      width: 2.0,
                    ),
                  )),
                  child: Text(
                    "Iniciar sesión",
                    style: TextStyle(
                        color: Color(0xff0095CD),
                        fontSize: scaledFontSize(context, 20.0),
                        fontFamily: "nunitoBold",
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
          const Atomdevelopedby()
        ]
      )
    );
    
  }
}