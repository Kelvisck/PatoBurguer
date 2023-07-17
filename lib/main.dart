import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
// pica ++
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color minhaCor = const Color(0xFF9B0D);
    return MaterialApp(
      home: Directionality(
        textDirection: TextDirection.ltr, // Defina a direcionalidade aqui
        child: Scaffold(
          backgroundColor: minhaCor,
          body: Center(
            child: Column(
              children: const [CircularProgressIndicator()],
            ),
          ),
        ),
      ),
    );
  }
}
