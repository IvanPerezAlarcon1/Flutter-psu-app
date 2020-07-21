import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutterpsuapp/pages/integrantes.dart';
import 'package:flutterpsuapp/utils/responsive.dart';

class MenuPrincipal extends StatefulWidget {
  @override
  _MenuPrincipal createState() => _MenuPrincipal();
}

class _MenuPrincipal extends State<MenuPrincipal> {
  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    return Scaffold(
      backgroundColor: Color(0xff3b4f5f),
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
                  fontSize: responsive.ip(6),
                  color: Color(0xff00acac),
                ),
              ),
              SizedBox(
                height: responsive.ip(6.5),
              ),
              Center(
                child: SvgPicture.asset(
                  'assets/img/menu.svg',
                  height: responsive.hp(32),
                ),
              ),
              SizedBox(
                height: responsive.ip(4),
              ),
              CupertinoButton(
                  borderRadius: BorderRadius.circular(100),
                  color: Color(0xff00acac),
                  child: Text(
                    "Carreras",
                    style: TextStyle(
                      fontFamily: "Oswald",
                      fontWeight: FontWeight.w400,
                      fontSize: responsive.ip(2.5),
                      letterSpacing: 1,
                    ),
                  ),
                  onPressed: () {}),
              SizedBox(
                height: responsive.ip(3.5),
              ),
              CupertinoButton(
                  borderRadius: BorderRadius.circular(100),
                  color: Color(0xff00acac),
                  child: Text(
                    "Simular",
                    style: TextStyle(
                      fontFamily: "Oswald",
                      fontWeight: FontWeight.w400,
                      fontSize: responsive.ip(2.5),
                      letterSpacing: 1,
                    ),
                  ),
                  onPressed: () {}),
              SizedBox(
                height: responsive.ip(3.5),
              ),
              CupertinoButton(
                  borderRadius: BorderRadius.circular(100),
                  color: Color(0xff00acac),
                  child: Text(
                    "Integrantes",
                    style: TextStyle(
                      fontFamily: "Oswald",
                      fontWeight: FontWeight.w400,
                      fontSize: responsive.ip(2.5),
                      letterSpacing: 1,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                Integrantes())); //redirige a la pantalla de INTEGRANTES
                  }),
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
