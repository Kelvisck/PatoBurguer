import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pato_burguer/assets/constantes.dart';
//import 'package:pato_burguer/assets/widgetsFunctions.dart';

class ResetPassoword extends StatefulWidget {
  const ResetPassoword({super.key});

  @override
  State<ResetPassoword> createState() => _ResetPassowordState();
}

class _ResetPassowordState extends State<ResetPassoword> {
  final _emailController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  Future passwordReset() async {
    try {
      await FirebaseAuth.instance
          .sendPasswordResetEmail(email: _emailController.text.trim());
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                content: Text(
                    "Link para sua resetar senha enviado! Verifique seu E-mail"),
              ));
    } on FirebaseAuthException catch (e) {
      print(e);
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                content: Text(e.message.toString()),
              ));
    }
    ;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(Constantes.corFundo.value),
          elevation: 0,
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
          )),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 250,
            width: 250,
            child: Image.asset(
              "lib/assets/recursos/pato-bolado-senha.png",
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 25.0,
            ),
            child: Text(
              "Insira seu E-mail e iremos lhe mandar um link para resetarmos sua senha",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(
            height: 09,
          ),
          // textfield do email
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(
              style: TextStyle(
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w500,
              ),
              controller: _emailController,
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(20)),
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(Constantes.corFundo.value)),
                      borderRadius: BorderRadius.circular(20)),
                  hintText: "E-mail",
                  fillColor: Colors.grey[150],
                  filled: true),
            ),
          ),
          SizedBox(
            height: 09,
          ),
          ElevatedButton(
              onPressed: passwordReset,
              child: Text(
                "Enviar",
                style: TextStyle(
                    fontFamily: 'Roboto',
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                    fontSize: 24),
              ),
              style: ButtonStyle(
                fixedSize: MaterialStateProperty.all<Size>(Size(335, 45)),
                backgroundColor:
                    MaterialStatePropertyAll<Color>(Constantes.corFundo),
              ))
        ],
      ),
    );
  }
}


/*Scaffold(
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
  }*/
