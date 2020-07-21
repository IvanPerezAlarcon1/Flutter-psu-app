import 'package:flutter/material.dart';
import 'package:flutterpsuapp/pages/menu_principal.dart';
import 'package:flutterpsuapp/utils/rotacion.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget with PortraitModeMixin {
  //con esto se bloquea la rotación de la app y queda en vertical
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner:
          false, //para esconder el banner de debug de la esquina superior derecha
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MenuPrincipal(),
    );
  }
}
