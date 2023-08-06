import 'package:flutter/material.dart';
import 'package:pato_burguer/assets/constantes.dart';
import 'models/Item_cardapio.dart';

class editarItem extends StatelessWidget {
  final ItemCardapio item;

  editarItem({required this.item});
  @override
  Widget build(BuildContext context) {
    final String hintNome = item.nome;
    final String hintDetalhes = item.detalhes;
    final String hintIngredientes = item.ingredientes;
    final double hintPreco = item.preco;
    final String hintImagem = item.image;
    return Scaffold(
      backgroundColor: Constantes.corFundo,
      body: Stack(
        children: [
          Positioned(
            child: Text(
              'Cardápio',
              style: TextStyle(
                  fontFamily: 'Roboto',
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                  fontSize: 24),
            ),
            top: 32,
            left: 146,
          ),
          Positioned(
              top: 258,
              //container do card branco
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height - 258,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(18),
                        topRight: Radius.circular(18))),
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 104, bottom: 10, left: 30, right: 30),
                  //container dos texfield
                  child: Container(
                    //onde tudo fica empilhado
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment(-1, -1),
                          child: Text('Nome',
                              style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  color: Color(0XFF434343))),
                        ),
                        Align(
                          child: Column(
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                height: 34,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                  color: Constantes.CorBorda,
                                  width: 1.0,
                                )),
                                child: Padding(
                                  padding: EdgeInsets.only(top: 10, left: 1),
                                  child: TextField(
                                    decoration: InputDecoration(
                                        hintText: hintNome,
                                        hintStyle: TextStyle(
                                            fontWeight: FontWeight.w800,
                                            color: Color(0xFF898989))),
                                  ),
                                ),
                              ),
                              // detalhes
                              SizedBox(
                                height: 4,
                              ),
                              Align(
                                alignment: Alignment(-1, 0),
                                child: Text('Detalhes',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w800,
                                        color: Color(0XFF434343))),
                              ),
                              Container(
                                height: 64,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                  color: Constantes.CorBorda,
                                  width: 1.0,
                                )),
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      top: 0, left: 1, right: 1),
                                  child: TextField(
                                    decoration: InputDecoration(
                                        hintText: hintDetalhes,
                                        hintStyle: TextStyle(
                                            fontWeight: FontWeight.w800,
                                            color: Color(0xFF898989)),
                                        hintMaxLines: null,
                                        alignLabelWithHint: true,
                                        border: InputBorder.none),
                                  ),
                                ),
                              ),
                              // ingredientes
                              SizedBox(
                                height: 4,
                              ),
                              Align(
                                alignment: Alignment(-1, 0),
                                child: Text('Ingredientes',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w800,
                                        color: Color(0XFF434343))),
                              ),
                              Container(
                                height: 64,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                  color: Constantes.CorBorda,
                                  width: 1.0,
                                )),
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      top: 0, left: 1, right: 1),
                                  child: TextField(
                                    decoration: InputDecoration(
                                        hintText: hintIngredientes,
                                        hintStyle: TextStyle(
                                            fontWeight: FontWeight.w800,
                                            color: Color(0xFF898989)),
                                        hintMaxLines: null,
                                        alignLabelWithHint: true,
                                        border: InputBorder.none),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Align(
                                alignment: Alignment(-1, -1),
                                child: Text('Preço',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w800,
                                        color: Color(0XFF434343))),
                              ),
                              Container(
                                height: 34,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                  color: Constantes.CorBorda,
                                  width: 1.0,
                                )),
                                child: Padding(
                                  padding: EdgeInsets.only(top: 10, left: 1),
                                  child: TextField(
                                    decoration: InputDecoration(
                                        hintText: hintPreco.toString(),
                                        hintStyle: TextStyle(
                                            fontWeight: FontWeight.w800,
                                            color: Color(0xFF898989))),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )),
          Align(
            alignment: Alignment(0, -0.56),
            child: SizedBox(
              width: 356, // Defina a largura máxima desejada
              height: 314, // Defina a altura máxima desejada
              child: Image.asset(
                  hintImagem), // Substitua 'hintImagem' pelo caminho da sua imagem
            ),
          )
        ],
      ),
    );
  }
}
