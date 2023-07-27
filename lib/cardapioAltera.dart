import 'package:flutter/material.dart';
import 'assets/constantes.dart';

class AlteraCardapio extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(Constantes.corFundo.value),
      body: Stack(
        children: [
          Positioned(
              top: 32,
              left: 130,
              child: Text(
                'Alterar Cadápio',
                style: TextStyle(
                    fontFamily: 'Roboto',
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                    fontSize: 24),
              )),
          Positioned(
              top: 80,
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height - 80,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(18),
                          topRight: Radius.circular(18))),
                  child: GridView.count(
                    crossAxisCount: 2,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(19),
                        child: Container(
                          width: 135,
                          height: 168.2,
                          color: Colors.green,
                        ),
                      ),
                    ],
                  )))
        ],
      ),
    );
  }
}
