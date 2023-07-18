import 'package:flutter/material.dart';
import './assets/constantes.dart';
//import 'package:google_sign_in/google_sign_in.dart';

class AdmPage extends StatelessWidget {
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
        body: Stack(
      children: [
        Positioned(
          top: 52,
          left: 116,
          child: Text(Constantes.textoTitulo,
              style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 24,
                  fontWeight: FontWeight.w900)),
        ),
        Positioned(
            top: 52,
            left: 176,
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
          left: 34,
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
          left: 34,
        ),
        Positioned(
          top: 232,
          left: 70,
          child: ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
                fixedSize: MaterialStateProperty.all<Size>(Size(240, 50)),
                backgroundColor:
                    MaterialStateProperty.all<Color>(Constantes.CorfundoBranca),
                elevation: MaterialStateProperty.all<double>(10),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ))),
            child: Align(
              alignment: Alignment.centerLeft, // Define o alinhamento do texto
              child: Row(
                children: [
                  Text(
                    'Alterar Cardápio',
                    style: TextStyle(
                        color: Constantes.corFundo,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w800),
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          top: 235,
          left: 246,
          child: ColorFiltered(
            colorFilter:
                ColorFilter.mode(Constantes.corFundo, BlendMode.srcATop),
            child: Image.asset(
              "lib/assets/recursos/cardapio.png",
              height: 40,
              width: 50,
            ),
          ),
        ),

        // ----------- botao 1 --------------------------------------------------//
        Positioned(
          top: 312,
          left: 70,
          child: ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
                fixedSize: MaterialStateProperty.all<Size>(Size(240, 50)),
                backgroundColor:
                    MaterialStateProperty.all<Color>(Constantes.CorfundoBranca),
                elevation: MaterialStateProperty.all<double>(10),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ))),
            child: Align(
              alignment: Alignment.centerLeft, // Define o alinhamento do texto
              child: Row(
                children: [
                  Text(
                    'Alterar Contato',
                    style: TextStyle(
                        color: Constantes.corFundo,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w800),
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          top: 316,
          left: 248,
          child: ColorFiltered(
            colorFilter:
                ColorFilter.mode(Constantes.corFundo, BlendMode.srcATop),
            child: Image.asset(
              "lib/assets/recursos/contato.png",
              height: 40,
              width: 50,
            ),
          ),
        ),

        // botao 2 /\ -------------------------------------------------------------//

        Positioned(
          top: 392,
          left: 70,
          child: ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
                fixedSize: MaterialStateProperty.all<Size>(Size(240, 50)),
                backgroundColor:
                    MaterialStateProperty.all<Color>(Constantes.CorfundoBranca),
                elevation: MaterialStateProperty.all<double>(10),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ))),
            child: Align(
              alignment: Alignment.centerLeft, // Define o alinhamento do texto
              child: Row(
                children: [
                  Text(
                    'Alterar Senha',
                    style: TextStyle(
                        color: Constantes.corFundo,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w800),
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          top: 398,
          left: 248,
          child: ColorFiltered(
            colorFilter:
                ColorFilter.mode(Constantes.corFundo, BlendMode.srcATop),
            child: Image.asset(
              "lib/assets/recursos/config.png",
              height: 40,
              width: 50,
            ),
          ),
        ),

        //----------------botao 3 /\---------------------------
      ],
    ));
  }
}

/*ColorFiltered(
  colorFilter: ColorFilter.matrix([
    // Red
    0.0, 0.0, 0.0, 0.0, 0.0,
    // Green
    0.0, 0.0, 0.0, 0.0, 0.0,
    // Blue
    0.0, 0.0, 0.0, 0.0, 1.0,
    // Alpha
    0.0, 0.0, 0.0, 1.0, 0.0,
  ]),
  child: Image.asset('caminho_da_sua_imagem'),
)*/


/*child: Image.asset(
            "lib/assets/recursos/cardapio.png",
            height: 40,
            width: 50,
          ),
          top: 225,
          left: 266,
        )
      ],
    ));
  }
}*/
