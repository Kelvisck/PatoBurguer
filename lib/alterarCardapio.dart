import 'package:flutter/material.dart';
import 'package:pato_burguer/assets/constantes.dart';

class AlterarCardapio extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(Constantes.corFundo.value),
      body: Stack(
        children: [
          Positioned(
            child: Text(
              'Alterar Contato',
              style: TextStyle(
                  fontFamily: 'Roboto',
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                  fontSize: 24),
            ),
            top: 32,
            left: 130,
          ),
          Positioned(
              top: 102,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height - 102,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(18),
                        topRight: Radius.circular(18))),
                child: Padding(
                  padding: const EdgeInsets.all(17.0),
                  child: Card(
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment(-1, -1),
                          child: Text(
                            'Endereço:',
                            style: TextStyle(
                                fontFamily: "Roboto",
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFFFFB54B)),
                          ),
                        ),
                        Align(
                          alignment: Alignment(-1, -0.88),
                          child: Container(
                              height: 54,
                              width: 370,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Color(0xFF747474), width: 1.0)),
                              child: Column(
                                children: [
                                  Align(
                                    alignment: Alignment(-0.96, 0.5),
                                    child: Text('AV. Campo Grande, 66'),
                                  )
                                ],
                              )),
                        )
                      ],
                    ),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
