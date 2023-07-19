import 'package:flutter/material.dart';
import 'package:pato_burguer/TelaLog.dart';
import 'package:pato_burguer/adm_page.dart';
import 'package:pato_burguer/log_page.dart';
import 'package:google_sign_in/google_sign_in.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color minhaCor = const Color(0xFF9B0D);
    return MaterialApp(
      title: "testando",
      home: logPage(),
    );
  }
}
