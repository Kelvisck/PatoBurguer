import 'package:flutter/material.dart';
import 'package:pato_burguer/assets/constantes.dart';

class editarItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constantes.corFundo,
      body: Stack(
        children: [
          Positioned(
            child: Text(
              'Cardápio',
              style: TextStyle(
                  fontFamily: 'Roboto',
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                  fontSize: 24),
            ),
            top: 32,
            left: 146,
          ),
          Positioned(
              top: 258,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height - 258,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(18),
                        topRight: Radius.circular(18))),
              ))
        ],
      ),
    );
  }
}
