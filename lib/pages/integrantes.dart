import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Integrantes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                "Integrantes",
                style: TextStyle(
                  fontFamily: "Cookie",
                  fontSize: 60,
                  color: Color(0xff00acac),
                  decoration: TextDecoration.underline,
                  decorationStyle: TextDecorationStyle.wavy,
                ),
              ),
              SizedBox(
                height: 100,
              ),
              Text(
                "Iván Pérez",
                style: TextStyle(
                  fontFamily: "Cookie",
                  fontSize: 40,
                  color: Color(0xff00acac),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                "Lester Vásquez",
                style: TextStyle(
                  fontFamily: "Cookie",
                  fontSize: 40,
                  color: Color(0xff00acac),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                "Sebastián Pérez",
                style: TextStyle(
                  fontFamily: "Cookie",
                  fontSize: 40,
                  color: Color(0xff00acac),
                ),
              ),
              SizedBox(
                height: 100,
              ),
              RaisedButton(
                color: Color(0xff00acac),
                onPressed: () {
                  Navigator.pop(context);
                },
                shape: CircleBorder(),
                padding: EdgeInsets.all(20),
                child: Icon(
                  Icons.arrow_back,
                  size: 40,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
