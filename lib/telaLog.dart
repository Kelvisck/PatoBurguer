import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

GoogleSignIn _googleSignIn = GoogleSignIn(
              scopes:[
              'email',
              'https://www.googleapis.com/auth/contacts.readonly'],
            );

class Login extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
      margin: const EdgeInsets.all(20),
      color: Color(0xFFFAFAFA),
      //child: Padding (const EdgeInsets.all(16)),
      child: Form(
        child: Column(
          children: [
            TextFormField(decoration: InputDecoration(labelText:"Usuário(a)" )
            ),
            TextFormField(decoration: InputDecoration(labelText:"Senha" )
            ),
          ],
        )
      )
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