import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'routes/app_routes.dart';

void main() async {
  runApp(const MyApp());
    WidgetsFlutterBinding.ensureInitialized();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp, // Solo orientación vertical normal
      DeviceOrientation.portraitDown, // Opcional: vertical invertida
    ]).then((_) async {
      WidgetsFlutterBinding.ensureInitialized();  // Asegura que todo esté inicializado antes de comenzar
      runApp(MyApp());
    });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      title: 'Trazul - pescadores',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textSelectionTheme: const TextSelectionThemeData(
          cursorColor: Colors.blue,
          selectionColor: Colors.blue,
          selectionHandleColor: Colors.blue,
        ),
      ),
    );
  }
}