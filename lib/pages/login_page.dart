import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
//import 'package:flutter_svg/svg.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
/*
  @override
  void afterFirstLayout(BuildContext context) {
    //este método se ejecuta solo 1 vez, detecta el tipo de dispositivo en el cual se ejecuta la app
    //para ver las medidas si está horizontal o vertical, shortestSide retorna el valor mínimo del ancho o el alto, independiente del sentido del dispositivo
    final bool isTablet = MediaQuery.of(context).size.shortestSide >=
        600; //si esto se cumple es que la app está en una tablet y se permitira que el dispositivo rote, en caso contrario, se bloquea la opción de rotar la app
    if (!isTablet) {
      SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp
      ]); //SI ME ENCUENTRO EN UN SMARTPHONE SE BLOQUEA LA ROTACIÓN DEL DISPOSITIVO
    }
  }
*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff3b4f5f), //color de fondo de la pantalla
      /*appBar: AppBar(
        backgroundColor: Color(0xff00acac), //color de la appbar
        title: Center(
          child: Text("Menú principal"),
        ),
      ), */
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          width: double.infinity,
          child: Column(
            mainAxisAlignment:
                MainAxisAlignment.center, //alinea al centro los widgets hijos
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            verticalDirection: VerticalDirection.down,
            children: <Widget>[
              Text(
                "PSU App simulator",
                style: TextStyle(
                  fontFamily: "Cookie",
                  fontSize: 40,
                  color: Color(0xff00acac),
                ),
              ),
              SizedBox(
                height: 60,
              ),
              Center(
                child: SvgPicture.asset(
                  'assets/img/menu.svg',
                  height: 250,
                  width: 250,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              CupertinoButton(
                  borderRadius: BorderRadius.circular(100),
                  color: Color(0xff00acac),
                  child: Text(
                    "Carreras",
                    style: TextStyle(
                      fontFamily: "Oswald",
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                      letterSpacing: 1,
                    ),
                  ),
                  onPressed: () {}),
              SizedBox(
                height: 25,
              ),
              CupertinoButton(
                  borderRadius: BorderRadius.circular(100),
                  color: Color(0xff00acac),
                  child: Text(
                    "Simular",
                    style: TextStyle(
                      fontFamily: "Oswald",
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                      letterSpacing: 1,
                    ),
                  ),
                  onPressed: () {}),
              SizedBox(
                height: 25,
              ),
              CupertinoButton(
                  borderRadius: BorderRadius.circular(100),
                  color: Color(0xff00acac),
                  child: Text(
                    "Integrantes",
                    style: TextStyle(
                      fontFamily: "Oswald",
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                      letterSpacing: 1,
                    ),
                  ),
                  onPressed: () {}),
            ],
          ),
        ),
      ),
      /*
      //backgroundColor: Color(0xff3b4f5f), //color fondo
      appBar: AppBar(
        centerTitle: true,
        title: Text("Simulador PSU"),
        backgroundColor: Color(0xff00acac), //color appbar
      ),
    */
    );
  }
}
