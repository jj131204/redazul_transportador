import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:redazul_transportador/mobile/widgets/generalConfiguration.dart';

import '../../themes/colors.dart';
import '../../themes/fonts.dart';
import '../../themes/sizedBox.dart';
import '../../utils/validations.dart';
import '../atoms/atomButton.dart';
import '../atoms/atomDeveloperBy.dart';
import '../atoms/atomInputs.dart';
import '../atoms/atomLogo.dart';
import '../atoms/atomText.dart';


class PageLogin extends StatefulWidget {
  const PageLogin({super.key});

  @override
  State<PageLogin> createState() => _PageLoginState();
}

class _PageLoginState extends State<PageLogin> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool validForm = false;
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  String? errorEmail;
  String? errorPassword;

  @override
  Widget build(BuildContext context) {
    return GeneralConfiguration(
      content: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AtomLogoRedAzul(
            ),
            sizedBoxAll.sizedBoxHeight3,
            Column(
                children: [
                atomTitle(title: 'Iniciar sesion'),
                SizedBox(height: 25.0),
                Text(
                  'Iniciar sesion en tu cuenta',
                  style: textAll.subTitle.copyWith(fontSize: scaledFontSize(context,20)),
                ),
              ],
            ),
            SizedBox(height: 15.0),
            atomInputsForm(
              textInput: "Correo electronico",
              controllerInput: email,
              icon: Icon(Icons.mail, color: Color(0xff0071BC)),
              typeKey: TextInputType.emailAddress,
              errorText: errorEmail,
              onChanged: (value){
                setState(() {
                  errorEmail = OnchangueRules.isValidEmailRequired(value);
                  validForm =  _formKey.currentState!.validate();
                });
              },
              validator: (value) => OnchangueRules.isValidEmailRequired(value),
            ),
            SizedBox(height: 15.0),
            atomInputFormPassword(
              textInput: "Contraseña",
              controllerInput: password,
              icon: Icon(Icons.password, color: Color(0xff0071BC)),
              errorText: errorPassword,
              onChanged: (value){
                setState(() {
                  errorPassword = OnchangueRules.isPassword(value);
                  validForm =  _formKey.currentState!.validate();
                });
              },
              validator: (value) => OnchangueRules.isPassword(value),
            ),
            GestureDetector(
              onTap: (){
                context.push('/recoverPassword');
              },
              child: Container(
                decoration: BoxDecoration(
                    border: Border(
                  bottom: BorderSide(
                    color: colores.gray3,
                    width: 1.0,
                  ),
                )),
                child: Text("¿Olvidaste tu contraseña?",style: TextStyle(color: colores.gray2, fontSize: scaledFontSize(context, 18)), textAlign: TextAlign.center,),
              ),
            ),
            SizedBox(height: 15.0),
            atomButtonGrayForm(text: "Iniciar sesión", onPressed: validForm ? (){
              context.push('/');
            }: null),
            SizedBox(height: 15.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 5.0),
                  child: Text(
                    "¿No tienes cuenta?",
                    style: TextStyle(
                        color: Color(0xff0095CD),
                        fontSize: scaledFontSize(context,20.0),
                        fontFamily: "NunitoRegular",
                        fontWeight: FontWeight.normal),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    context.push('/pageProfile');
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border(
                      bottom: BorderSide(
                        color: Color(0xff0095CD), // Color del borde inferior
                        width: 2.0, // Grosor del borde inferior
                      ),
                    )),
                    child: Text(
                      "Registrate",
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
            Atomdevelopedby()
          ],
        ),
      )
    );
  }
}