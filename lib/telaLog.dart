//import 'dart:js';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:pato_burguer/adm_page.dart';
import 'package:pato_burguer/assets/constantes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:pato_burguer/reset-password-page.dart';

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

/*GoogleSignIn _googleSignIn = GoogleSignIn(
  scopes: ['email', 'https://www.googleapis.com/auth/contacts.readonly'],
);*/

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: [
        Column(
          children: [
            Container(
              width: 450,
              height: 500,
              child: Card(
                margin: const EdgeInsets.all(20),
                child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Form(
                        child: Column(
                      children: [
                        SizedBox(
                          height: 100,
                        ),
                        Row(
                          children: [
                            Text(
                              "Login",
                              style: new TextStyle(
                                  color: Colors.black,
                                  fontSize: 24,
                                  fontFamily: Constantes.fonteRoboto,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
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
                              fontWeight: FontWeight.w500),
                          decoration: InputDecoration(
                              labelText: "E-mail",
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(7))),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(7))),
                              labelStyle: TextStyle(color: Colors.black)),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        TextFormField(
                          controller: _passwordController,
                          autofocus: true,
                          obscureText: true,
                          keyboardType: TextInputType.text,
                          style: new TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontFamily: Constantes.fonteRoboto,
                              fontWeight: FontWeight.w500),
                          decoration: InputDecoration(
                              labelText: "Senha",
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(7))),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(7))),
                              labelStyle: TextStyle(color: Colors.black)),
                        ),
                        Stack(
                          children: [
                            Container(
                              height: 40,
                              alignment: Alignment.centerRight,
                              child: TextButton(
                                child: Text(
                                  "Esqueceu a Senha?",
                                  textAlign: TextAlign.right,
                                ),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              ResetPassoword()));
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
                          child: Text(
                            'Entrar',
                            style: TextStyle(
                                fontSize: 22,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w600),
                          ),
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
        Positioned(
          top: -35,
          left: 100,
          child: SizedBox(
            height: 200,
            width: 200,
            child: Image.asset(
              "lib/assets/recursos/logo_pato_burguer.png",
            ),
          ),
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


