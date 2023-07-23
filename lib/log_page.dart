import 'package:flutter/material.dart';
import 'package:pato_burguer/TelaLog.dart';

class logPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color(0xFFFF9B0D),
      body: Stack(children: [
        Container(
              margin: EdgeInsets.only(top: 154),
              child:
              Positioned(
                top: 140,
                left: -20,
                child: SingleChildScrollView(
                  child: Login(),
                ))
       )]),
    );
  }
}




/* import 'package:flutter/material.dart';
import 'package:pato_burguer/TelaLog.dart';
import 'package:pato_burguer/telaLog.dart';

class logPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color(0xFFFF9B0D),
      body: Stack(
        children: [
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
        ]
      ),
      ],
      )
    );
  }
}*/
