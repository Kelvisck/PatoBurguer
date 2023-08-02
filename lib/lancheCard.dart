import 'package:flutter/material.dart';
import 'package:pato_burguer/assets/constantes.dart';
import 'package:pato_burguer/models/Item_cardapio.dart';

class LancheCard extends StatelessWidget {
  final ItemCardapio item;

  LancheCard(this.item);

  @override
  Widget build(BuildContext context) {
    return Container(
        //color: Constantes.CorCardItem,
        width: 135,
        height: 168.2,
        color: Constantes.CorCardItem,
        child: Stack(
          children: [
            Image.asset(item.image ?? 'lib/assets/recursos/imagem_padrao.png'),
            Align(child: Text(item.nome), alignment: Alignment(0, 0.40)),
            Align(
              child: Text(
                'R\$',
                style: TextStyle(
                    color: Constantes.corFundo,
                    fontSize: 11,
                    fontWeight: FontWeight.w800),
              ),
              alignment: Alignment(-0.5, 0.70),
            ),
            Align(
              child: Text(
                item.preco.toString(),
                style: TextStyle(fontSize: 20, color: Color(0xFF434343)),
              ),
              alignment: Alignment(-0.1, 0.74),
            )
          ],
        ));
  }
}