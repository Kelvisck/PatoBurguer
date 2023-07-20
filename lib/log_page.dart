import 'package:flutter/material.dart';
import 'package:pato_burguer/TelaLog.dart';

class logPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color(0xFFFF9B0D),
      body: Stack(children: [
        Center(
            child: SingleChildScrollView(
          child: Login(),
        ))
      ]),
    );
  }
}
