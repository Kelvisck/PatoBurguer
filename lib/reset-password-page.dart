import 'dart:io';

import 'package:flutter/material.dart';
import 'package:pato_burguer/assets/constantes.dart';
import 'package:pato_burguer/assets/widgetsFunctions.dart';

class ResetPassoword extends StatelessWidget {
  const ResetPassoword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(Constantes.corFundo.value),
      body: Stack(
        children: [
          Positioned(
            top: 22,
            left: 3,
            child:
              IconButton(
                onPressed: ()=> Navigator.pop(context, false), 
                icon: Icon(
                  Icons.arrow_back_ios_new_rounded, 
                  color: Colors.white,
                  )
                ),
                ),
          Positioned(
            child: Text(
              'Recuperação de Senha',
              style: 
               TextStyle(
                  fontFamily: 'Roboto',
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                  fontSize: 24
               ),
            ),
            top: 32,
            left: 80,
          ),
          /*Positioned(
            child:
             //Image.asset("assets/recursos/logo"),
            Image.file(File("assets/recursos/pato-bolado-senha.png")),
            top: 32,
            left: 80,
            ),*/
          Positioned(
              top: 110,
              left: 23,
              //container de fundo ------------------------------------------------------------------
              child: 
               Padding(
                padding: const EdgeInsets.only(top: 30, bottom: 30),
                child: Container(
                  width: 350,
                  height: 450,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(18),
                          topRight: Radius.circular(18),
                          bottomLeft: Radius.circular(18),
                          bottomRight: Radius.circular(18)
                      )
                    ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 100,
                      left: 40,
                      right: 40,
                    ),
                    child: Column(
                      children: [
                          SizedBox(
                            width: 10,
                            height: 10,
                            ),
                          Align(
                            alignment: 
                              Alignment(0, 0),
                            child: 
                              textoSimples("Esqueceu sua Senha?", 24),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Align(
                            alignment: 
                            Alignment(0 , 0),
                            child: Text(
                              "Insira seu E-mail logado em sua conta para que possamos enviar um link com instruções sobre a recuperação de senha",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 13,
                                fontFamily: 'Roboto',
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            autofocus: true,
                            style: new TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontFamily: Constantes.fonteRoboto,
                              ),
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(7))
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(7))
                                ),
                                hintText: "E-mail",
                                labelStyle: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Roboto',
                                ),
                              ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          ElevatedButton(
                                style: ButtonStyle(
                                    minimumSize: MaterialStateProperty.all(
                                        Size(355, 50)),
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    )),
                                    backgroundColor:
                                        MaterialStatePropertyAll<Color>(
                                            Constantes.corFundo)),
                                onPressed: () {},
                                child: Text(
                                  'Salvar',
                                  style: TextStyle(
                                      fontSize: 24, fontFamily: 'Poppins-Bold'),
                                ),
                              )
                      ],
                    ),
                  )
                ),
              )
              )
              
       ]
      ),
    );
  }
}
