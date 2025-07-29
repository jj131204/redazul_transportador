import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../themes/colors.dart';
import 'atomLogo.dart';

class atomAppBar extends StatefulWidget {
  const atomAppBar({super.key});

  @override
  State<atomAppBar> createState() => _atomAppBarState();
}

class _atomAppBarState extends State<atomAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false, 
      flexibleSpace: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.white, Colors.white], // Puedes ajustar los colores
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SafeArea(
          child: Container(
            height: 60,
            decoration: BoxDecoration(
              color: colores.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 0,
                  blurRadius: 10,
                  offset: Offset(0, 5), // Desplazamiento hacia abajo
                ),
              ],  
            ),
            padding: EdgeInsets.only(top: 0, bottom: 0, left: MediaQuery.of(context).size.width * 0.05,  right: MediaQuery.of(context).size.width * 0.05),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: (){
                    Scaffold.of(context).openDrawer();
                  },
                  child:  Container(
                    // width: 60.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.menu_rounded, color: colores.blue3, size: 32,),
                      ],
                    )),
                ),

                GestureDetector(
                  onTap: (){
                    context.push('/home');
                  },
                  child: Container(
                    child: atomLogoHeader(
                      heightImg: 40.0,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //       builder: (context) => allNotifications()),
                    // );
                  },
                  child: Image.asset(
                    'assets/images/icoAppPescadores.png',
                    height: 20.0,
                  ),
                ),
              ]
            ),
          )
        ),
      )
    );
  }
}