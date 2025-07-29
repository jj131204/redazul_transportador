import 'package:flutter/material.dart';
import 'package:redazul_transportador/themes/colors.dart';

class GeneralConfiguration extends StatefulWidget {
  final Widget content;
  const GeneralConfiguration({super.key, required this.content});

  @override
  State<GeneralConfiguration> createState() => _GeneralConfigurationState();
}

class _GeneralConfigurationState extends State<GeneralConfiguration> {

  @override
  Widget build(BuildContext context) {

    final double screenHeight = MediaQuery.of(context).size.height;
    final double statusBarHeight = MediaQuery.of(context).padding.top;
    final double bottomNavBarHeight = MediaQuery.of(context).padding.bottom;
    final double availableHeight = screenHeight - bottomNavBarHeight - statusBarHeight;

    return MediaQuery(
      data: MediaQuery.of(context).copyWith(
        textScaler: TextScaler.linear(1.0),
      ),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: colores.backgroundGray,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Container(
                color: colores.white,
                padding: const EdgeInsets.all(20.0),
                width: double.infinity,
                constraints: BoxConstraints(
                  maxWidth: 400.0,
                  minHeight: availableHeight,
                ),
                child: widget.content,
              )
            )
          )
        ),
      )
    );
  }
}