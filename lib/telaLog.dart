//import 'dart:js';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:pato_burguer/adm_page.dart';
import 'package:pato_burguer/assets/constantes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:pato_burguer/reset-password-page.dart';
import 'AuthLogFunction.dart';

final _firebaseAuth = FirebaseAuth.instance;
final _emailController = TextEditingController();
final _passwordController = TextEditingController();

login(BuildContext context) async {
  try {
    UserCredential userCredential =
        await _firebaseAuth.signInWithEmailAndPassword(
            email: _emailController.text, password: _passwordController.text);
    if (userCredential != null) {
      Navigator.pushReplacement(
        context as BuildContext,
        MaterialPageRoute(
          builder: (context) => AdmPage(),
        ),
      );
    }
  } on FirebaseAuthException catch (e) {
    String errorMessage = "Ocorreu um erro ao fazer login.";
  }
}

GoogleSignIn _googleSignIn = GoogleSignIn(
  scopes: ['email', 'https://www.googleapis.com/auth/contacts.readonly'],
);

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: [
        Column(
          children: [
            Container(
              width: 450,
              height: 450,
              child: Card(
                margin: const EdgeInsets.all(20),
                child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Form(
                        child: Column(
                      children: [
                        SizedBox(
                          height: 50,
                        ),
                        Positioned(
                          left: 10,
                          child: Text(
                            "Login",
                            style: new TextStyle(
                                color: Colors.black,
                                fontSize: 30,
                                fontFamily: Constantes.fonteRoboto,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Divider(
                          color: Colors.white,
                        ),
                        TextFormField(
                          controller: _emailController,
                          autofocus: true,
                          keyboardType: TextInputType.emailAddress,
                          style: new TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontFamily: Constantes.fonteRoboto,
                              fontWeight: FontWeight.bold),
                          decoration: InputDecoration(
                              labelText: "E-mail",
                              labelStyle: TextStyle(color: Colors.black)),
                        ),
                        TextFormField(
                          controller: _passwordController,
                          autofocus: true,
                          obscureText: false,
                          keyboardType: TextInputType.text,
                          style: new TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontFamily: Constantes.fonteRoboto,
                              fontWeight: FontWeight.bold),
                          decoration: InputDecoration(
                              labelText: "Senha",
                              labelStyle: TextStyle(color: Colors.black)),
                        ),
                        Stack(
                          children: [
                            Container(
                              height: 40,
                              alignment: Alignment.centerRight,
                              child: TextButton(
                                child: Text(
                                  "Alterar Senha",
                                  textAlign: TextAlign.right,
                                ),
                                onPressed: () {
                                  Navigator.push(context,
                                   MaterialPageRoute(builder: (context) => ResetPassword()
                                   )
                                  );
                                },
                                ),
                            )
                          ],
                        ),
                        Divider(
                          color: Colors.white,
                        ),
                        SizedBox(height: 12),
                        ElevatedButton(
                          onPressed: () {
                            login(context);
                          },
                          child: Text('Entrar'),
                          style: ButtonStyle(
                              fixedSize: MaterialStateProperty.all<Size>(
                                  Size(400, 50)),
                              backgroundColor: MaterialStatePropertyAll<Color>(
                                  Constantes.corFundo)),
                        ),
                      ],
                    ))),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
/*import 'package:flutter/material.dart';
import 'package:pato_burguer/TelaLog.dart';


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


