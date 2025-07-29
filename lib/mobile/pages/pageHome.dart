import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:redazul_transportador/mobile/atoms/atomText.dart';
import 'package:redazul_transportador/themes/sizedBox.dart';

import '../../themes/colors.dart';
import '../atoms/atomAppBar.dart';
import '../atoms/atomCard.dart';
import '../widgets/generalConfiguration.dart';

class PageHome extends StatefulWidget {
  const PageHome({super.key});

  @override
  State<PageHome> createState() => _PageHomeState();
}

class _PageHomeState extends State<PageHome> {
  @override
  Widget build(BuildContext context) {
    return GeneralConfiguration(
      appBarContent: atomAppBar(context),
      content: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          atomTitle(title: "Bienvenido Juan José"),
          sizedBoxAll.sizedBoxHeight3,
          atomCardRow(
            textInput:"Registra nuevo transporte",
            colorCard: colores.blue3,
            imageCard: "transportador.png",
            completed: false,
            nameFunction: (){
              context.push('/gestionFaenas');
            }
          ),
          sizedBoxAll.sizedBoxHeight3,
          atomCardRow(
            textInput:"Historia de transporte",
            colorCard: colores.blue6,
            imageCard: "despachoAlevinos.png",
            completed: false,
            nameFunction: (){
              context.push('/gestionFaenas');
            }
          ),
          sizedBoxAll.sizedBoxHeight3,
          atomCardRow(
            textInput:"Configura tu perfil",
            colorCard: colores.blue5,
            imageCard: "perfil-ICO.png",
            completed: false,
            nameFunction: (){
              context.push('/gestionFaenas');
            }
          ),
          sizedBoxAll.sizedBoxHeight3,
        ],
          ));
  }
}