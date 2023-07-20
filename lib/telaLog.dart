import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:pato_burguer/assets/constantes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:firebase_auth/firebase_auth.dart';

final FirebaseAuth auth = FirebaseAuth.instance;

GoogleSignIn _googleSignIn = GoogleSignIn(
  scopes: ['email', 'https://www.googleapis.com/auth/contacts.readonly'],
);

class Login extends StatelessWidget {
  final Widget textoBotao = Positioned(
    top: 10,
    left: 30,
    child: TextButton(
      onPressed: () {},
      child: Text(
        'Esqueceu a senha?',
        style: TextStyle(decoration: TextDecoration.underline),
      ),
    ),
  );
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        Container(
          // width: 380,
          //height: 346,
          child: Card(
            margin: const EdgeInsets.all(20),
            child: Padding(
                padding: const EdgeInsets.all(16),
                child: Form(
                    child: Column(
                  children: [
                    TextFormField(
                        decoration: InputDecoration(labelText: "Usuário(a)")),
                    TextFormField(
                        decoration: InputDecoration(labelText: "Senha")),
                    Stack(
                      children: [
                        Align(
                          alignment: Alignment.topRight,
                          child: textoBotao,
                        )
                      ],
                    ),
                    SizedBox(height: 34),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('Entrar'),
                      style: ButtonStyle(
                          fixedSize:
                              MaterialStateProperty.all<Size>(Size(400, 50)),
                          backgroundColor: MaterialStatePropertyAll<Color>(
                              Constantes.corFundo)),
                    ),
                  ],
                ))),
          ),
        ),
      ],
    );
  }
}
/*import 'package:flutter/material.dart';
import 'package:pato_burguer/TelaLog.dart';

class logPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color(0xFFFF9B0D),
      body: Stack(
        children: [
          Center(
            child: SingleChildScrollView(
              child: Login(),)
      )
      ]

    ),
  );
  }
}*/


