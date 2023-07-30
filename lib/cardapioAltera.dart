import 'package:flutter/material.dart';
import 'assets/constantes.dart';
import 'models/Item_cardapio.dart';
import 'lancheCard.dart';

class AlteraCardapio extends StatefulWidget {
  @override
  State<AlteraCardapio> createState() => _AlteraCardapioState();
}

class _AlteraCardapioState extends State<AlteraCardapio> {
  List<ItemCardapio> _itens = [
    ItemCardapio(
        'X-Pato Bac',
        'Delicioso lanche, copia do MCDonalds',
        'Molho, hamburguer, tomate e queijo',
        20.0,
        'carne',
        'lib/assets/recursos/pato-bacon_solo.png'),
    ItemCardapio(
        'X-Lombo de pato',
        'delicioso hamburguer de lombo de pato',
        'Pão, hamburguer, lombo de pato e queijo',
        22.00,
        'carne',
        'lib/assets/recursos/pato-bacon_solo.png'),
    ItemCardapio(
        'X-Lombo de pata',
        'delicioso hamburguer de lombo de pato',
        'Pão, hamburguer, lombo de pato e queijo',
        22.00,
        'carne',
        'lib/assets/recursos/pato-bacon_solo.png'),
    ItemCardapio(
        'X-Lombo de pata',
        'delicioso hamburguer de lombo de pato',
        'Pão, hamburguer, lombo de pato e queijo',
        22.00,
        'carne',
        'lib/assets/recursos/pato-bacon_solo.png')
  ];

  void _adicionarLanche() {
    setState(() {
      _itens.add(ItemCardapio('Novo Lanche', 'DESC', 'ingredientes', 20.0,
          'carne', 'lib/assets/recursos/pato-bacon_solo.png'));
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(Constantes.corFundo.value),
      body: Stack(
        children: [
          Positioned(
              top: 32,
              left: 130,
              child: Text(
                'Alterar Cadápio',
                style: TextStyle(
                    fontFamily: 'Roboto',
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                    fontSize: 24),
              )),
          Positioned(
            top: 80,
            child: Container(
              padding: EdgeInsets.only(left: 24, right: 24, top: 20),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height - 80,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(18),
                      topRight: Radius.circular(18))),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                ),
                itemBuilder: (context, index) {
                  if (index < _itens.length) {
                    // Verifica se o índice é válido antes de retornar o LancheCard
                    return LancheCard(_itens[index]);
                  } else {
                    return null;
                  }
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
