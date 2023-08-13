import 'package:flutter/material.dart';
//import 'package:pato_burguer/TelaLog.dart';
//import 'package:pato_burguer/adm_page.dart';
//import 'package:pato_burguer/alterarCardapio.dart';
//import 'package:pato_burguer/TelaLog.dart';
//import 'package:pato_burguer/adm_page.dart';
//import 'package:pato_burguer/alterarContato.dart';
import 'package:pato_burguer/log_page.dart';
//import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_core/firebase_core.dart';
//import 'package:pato_burguer/reset-password-page.dart';
import 'package:pato_burguer/TelaLog.dart';
import 'package:pato_burguer/adm_page.dart';
import 'package:pato_burguer/alterarContato.dart';
import 'package:pato_burguer/cardapioAltera.dart';
import 'package:pato_burguer/editarItem.dart';
import 'package:pato_burguer/log_page.dart';
//import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_core/firebase_core.dart';
//import 'package:pato_burguer/login.page.dart';
import 'package:pato_burguer/reset-password-page.dart';
//import 'package:pato_burguer/login.page.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Color minhaCor = const Color(0xFFFF9B0D);
    return MaterialApp(
      title: "PatoBurguer",
      debugShowCheckedModeBanner: false,
      home: logPage(),
      //home: AlterarContato(),
      //home: ChangePassword()
      //home: AdmPage(),
      //home: ResetPassoword(),
    );

    //title: "PatoBurguer",
    //home: AlterarContato(),
    //home: ResetPassword()
    //home: AdmPage(),
    //home: AlteraCardapio());
    //home: editarItem());
  }
}
