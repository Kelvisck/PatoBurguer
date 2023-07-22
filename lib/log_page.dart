import 'package:flutter/material.dart';
import 'package:pato_burguer/TelaLog.dart';

class logPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color(0xFFFF9B0D),
      body: Stack(
        children: [
          Positioned(
        top: 60,
        left: 95,
        child: Image.asset("lib/assets/recursos/icone_app_admin.png", width: 206, height: 189,
          ),
        ),
        Stack(
          children:[
            Container(
              margin: EdgeInsets.only(top: 154),
              child:
              Positioned(
                top: 140,
                left: -20,
                child: SingleChildScrollView(
                  child: Login(),
                ))
            )
      ]),
        ],
      )
    );
  }
}

/*Positioned(
        top: 60,
        left: 95,
        child: Image.asset("lib/assets/recursos/icone_app_admin.png", width: 206, height: 189,
          ),
        ), */

/*Stack(
        children:[
        Container(
          margin: EdgeInsets.only(top: 154),
          child:
          Positioned(
          top: 140,
          left: -20,
          child: SingleChildScrollView(
            child: Login(),
        ))
        )
      ]), */