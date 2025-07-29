import 'package:flutter/material.dart';

class BackButtonInterceptorShow extends StatelessWidget {
  final Widget child;

  const BackButtonInterceptorShow({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    // ignore: deprecated_member_use
    return WillPopScope(
      onWillPop: () async {
        // Mostrar un diálogo de confirmación

          return false;
        
      },
      child: child,
    );
  }
}