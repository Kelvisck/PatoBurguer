import 'package:flutter/material.dart';
import 'package:pato_burguer/assets/constantes.dart';
import 'package:pato_burguer/assets/widgetsFunctions.dart';

class ResetPassoword extends StatelessWidget {
  const ResetPassoword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(Constantes.corFundo.value),
      body: Stack(children: [
        AppBar(
          backgroundColor: Color(Constantes.corFundo.value),
          leading: IconButton(
              onPressed: () => Navigator.pop(context, false),
              icon: Icon(
                Icons.arrow_back_ios_new_rounded,
                color: Colors.white,
              )),
          title: Padding(
            padding: EdgeInsets.all(15.0),
            child: Text(
              'Recuperação de Senha',
              style: TextStyle(
                  fontFamily: 'Roboto',
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                  fontSize: 24),
            ),
          ),
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 30, bottom: 30),
            child: Container(
                width: 375,
                height: 450,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(18),
                        topRight: Radius.circular(18),
                        bottomLeft: Radius.circular(18),
                        bottomRight: Radius.circular(18))),
                child: ListView(
                  padding: const EdgeInsets.only(
                    left: 40,
                    right: 40,
                  ),
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: 200,
                          width: 200,
                          child: Image.asset(
                            "lib/assets/recursos/pato-bolado-senha.png",
                          ),
                        ),
                        Align(
                          alignment: Alignment(0, 0),
                          child: textoSimples("Esqueceu sua Senha?", 30),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Align(
                          alignment: Alignment(0, 0),
                          child: Text(
                            "Insira seu E-mail logado em sua conta para podermos lhe enviar um link com instruções sobre a recuperação de senha",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        TextFormField(
                          autofocus: true,
                          style: new TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontFamily: Constantes.fonteRoboto,
                          ),
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 16.0, vertical: 12.0),
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(7))),
                            enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(7))),
                            hintText: "E-mail",
                            labelStyle: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: ElevatedButton(
                            style: ButtonStyle(
                                minimumSize:
                                    MaterialStateProperty.all(Size(355, 50)),
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
                              'Enviar',
                              style: TextStyle(
                                  fontSize: 22,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        )
                      ],
                    ),
                  ],
                )),
          ),
        ),
      ]),
    );
  }
}
