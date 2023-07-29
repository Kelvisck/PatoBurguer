import 'package:flutter/material.dart';
import 'package:pato_burguer/models/Item_cardapio.dart';

class LancheCard extends StatelessWidget {
  final ItemCardapio item;

  LancheCard(this.item);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 135,
      height: 168.2,
      child: Image.asset(item.image),
    );
  }
}
