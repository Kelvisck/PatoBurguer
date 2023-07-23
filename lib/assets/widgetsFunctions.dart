import 'package:flutter/material.dart';
import 'constantes.dart';

Widget titulosApp(String texto) {
  return Text(
    texto,
    style: TextStyle(
        fontFamily: 'Roboto',
        color: Constantes.CorTexto1,
        fontWeight: FontWeight.w700,
        fontSize: 20),
  );
}

Widget textoSimples(String texto, double tamanhoFonte) {
  return Text(
    texto,
    style: TextStyle(
        fontFamily: 'Roboto',
        color: Constantes.CorTexto1,
        fontSize: tamanhoFonte,
        fontWeight: FontWeight.w700),
  );
}

Widget CamposEditarHorario(String textoDia, String textoHorario) {
  return Container(
    decoration: BoxDecoration(
        border: Border.all(
          color: Constantes.CorBorda,
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(5)),
    height: 34,
    width: 370,
    child: Stack(
      children: [
        Align(
            alignment: Alignment(-0.94, 0), child: textoSimples(textoDia, 15)),
        Align(
          alignment: Alignment(0.60, 0),
          child: textoSimples(textoHorario, 12),
        ),
        Align(
          alignment: Alignment(0.99, 0),
          child: Image.asset('lib/assets/recursos/editar.png'),
        )
      ],
    ),
  );
}

Widget linhaCinza() {
  return Divider(
    color: Colors.grey,
    thickness: 1.0,
    indent: 0,
    endIndent: 0,
  );
}
