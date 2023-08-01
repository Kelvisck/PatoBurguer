import 'package:flutter/material.dart';
import 'package:pato_burguer/alterarContato.dart';
import 'package:pato_burguer/assets/widgetsFunctions.dart';
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
        // ----------- botao 1 --------------------------------------------------//
        /*Positioned(
            top: 232,
            left: 70,
            child: butaoAdm('Alterar Cardápio',
                'lib/assets/recursos/cardapio.png', context, cardapioAltera())),*/

        // botao 2  -------------------------------------------------------------//

        Positioned(
            top: 312,
            left: 70,
            child: butaoAdm('Alterar Contato',
                'lib/assets/recursos/contato.png', context, AlterarContato())),

        //----------------botao 3 ---------------------------
        /* Positioned(
            top: 392,
            left: 70,
            child: butaoAdm('Alterar Senha', 'lib/assets/recursos/config.png', context, reset-password-page())),*/

            // Obs. Alencar: Trocar ResetPassowrd() por ChangePassword(), é a página de alterar senha, a reset é a do 'esqueci a senha'
      ],
    ));
  }
}
