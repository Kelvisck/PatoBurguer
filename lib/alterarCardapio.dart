import 'package:flutter/material.dart';
import 'package:pato_burguer/assets/constantes.dart';
import 'package:pato_burguer/assets/widgetsFunctions.dart';

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
              //container de fundo ------------------------------------------------------------------
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height - 102,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(18),
                        topRight: Radius.circular(18))),
                child: Padding(
                  /*padding: const EdgeInsets.all(17.0),*/
                  padding: const EdgeInsets.only(top: 17, bottom: 17),
                  child: Card(
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment(-0.89, -1),
                          child: titulosApp('Endereço:'),
                        ),
                        Align(
                          alignment: Alignment(-1, -0.88),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 30,
                              ),

                              // container endereço ------------------------------------------------------ C
                              Container(
                                  padding: EdgeInsets.only(
                                      top: 5, left: 5, bottom: 5),
                                  height: 54,
                                  width: 370,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Constantes.CorBorda,
                                          width: 1.0),
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Stack(
                                    children: [
                                      Align(
                                        alignment: Alignment(-1, -0.7),
                                        child: Text(
                                          'AV. Campo Grande, 66',
                                          style: TextStyle(
                                              color: Constantes.CorTexto1,
                                              fontFamily: 'Roboto',
                                              fontSize: 15,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                      Align(
                                          alignment: Alignment.bottomRight,
                                          child: Image.asset(
                                              'lib/assets/recursos/editar.png')),
                                      Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Text(
                                          'Campo Grande-MS',
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontFamily: 'Roboto',
                                              color: Constantes.CorTexto1,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      )
                                    ],
                                  )),
                              // linha ---------------------------- ?
                              SizedBox(
                                height: 10,
                              ),
                              Align(
                                child: linhaCinza(),
                              ),
                              Align(
                                alignment: Alignment(-0.72, -0.4),
                                child: titulosApp('Horários de Funcionamento:'),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              CamposEditarHorario(
                                  'Segunda à sexta', '18:00 - 1:00'),
                              SizedBox(
                                height: 5,
                              ),
                              CamposEditarHorario('Sábado', '18:00 - 3:00'),
                              SizedBox(
                                height: 5,
                              ),
                              CamposEditarHorario(
                                  'Domingos e Feriados', '18:00 - 00:00'),
                              SizedBox(
                                height: 10,
                              ),
                              linhaCinza(),
                              Align(
                                alignment: Alignment(-0.79, -1),
                                child: titulosApp('Faça seu pedido em:'),
                              ),
                              Row(
                                children: [
                                  Image.asset('lib/assets/recursos/contato.png')
                                ],
                              )
                            ],
                          ),
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
