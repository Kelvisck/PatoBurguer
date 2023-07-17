import 'package:flutter/material.dart';
import 'package:pato_burguer/TelaLog.dart';
import 'package:pato_burguer/log_page.dart';

void main() {
  runApp(const MyApp());
}
// pica ++ aaaaaaaaaa
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color minhaCor = const Color(0xFF9B0D);
    return MaterialApp(title: "testando",
    home: logPage(),
    );
    }
  }