import 'package:flutter/material.dart';
import './assets/constantes.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AdmPage extends StatelessWidget {
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
        body: Stack(
      children: [
        Positioned(
          top: 52,
          left: 126,
          child: Text(Constantes.textoTitulo,
              style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 24,
                  fontWeight: FontWeight.w900)),
        ),
        Positioned(
            top: 52,
            left: 186,
            child: Text(Constantes.textoTitulo2,
                style: TextStyle(
                    fontFamily: Constantes.fonteRoboto,
                    fontSize: 24,
                    fontWeight: FontWeight.w900,
                    color: Constantes.corFundo))),
        Positioned(
          child: Text(
            "Bem vindo a",
            style: TextStyle(
                fontFamily: Constantes.fonteRoboto,
                fontSize: 22,
                fontWeight: FontWeight.bold),
          ),
          top: 116,
          left: 20,
        ),
        Positioned(
          child: Text(
            "Área Administrativa",
            style: TextStyle(
                fontFamily: Constantes.fonteRoboto,
                fontSize: 22,
                fontWeight: FontWeight.bold),
          ),
          top: 144,
          left: 20,
        ),
        Positioned(
          top: 222,
          left: 70,
          child: ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              fixedSize: MaterialStateProperty.all<Size>(Size(257, 47)),
              backgroundColor:
                  MaterialStateProperty.all<Color>(Constantes.CorfundoBranca),
              elevation: MaterialStateProperty.all<double>(10),
            ),
            child: Align(
              alignment: Alignment.centerLeft, // Define o alinhamento do texto
              child: Row(
                children: [
                  Text(
                    'Alterar Cardápio',
                    style: TextStyle(color: Constantes.corFundo),
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          child: Image.asset("assets/recursos/cardapio.png"),
          top: 300,
          left: 50,
        )
      ],
    ));
  }
}


/*child: Text(
                'Alterar Cardápio',
                style: TextStyle(color: Constantes.corFundo),
              )*/
