import 'dart:math';

import 'package:flutter/material.dart';
import 'package:pato_burguer/assets/constantes.dart';
import 'package:pato_burguer/assets/widgetsFunctions.dart';
import 'models/Item_cardapio.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_core/firebase_core.dart';

class editarItem extends StatefulWidget {
  final ItemCardapio item;

  editarItem({required this.item});

  @override
  State<editarItem> createState() => _editarItemState();
}

class _editarItemState extends State<editarItem> {
  final TextEditingController hintNomeController = TextEditingController();
  final TextEditingController hintDetalhesController = TextEditingController();
  final TextEditingController hintIngredientesController =
      TextEditingController();
  final TextEditingController hintPrecoController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    hintNomeController.text = widget.item.nome;
    hintDetalhesController.text = widget.item.detalhes;
    hintIngredientesController.text = widget.item.ingredientes;
    hintPrecoController.text = widget.item.preco.toString();
  }

  void atualizarItens() async {
    String novoNome = hintNomeController.text;
    String novoDetalhes = hintDetalhesController.text;
    String novoIngredientes = hintIngredientesController.text;
    double novoPreco = double.parse(hintPrecoController.text);

    // Referência para o nó 'item'
    DatabaseReference databaseRef =
        FirebaseDatabase.instance.reference().child('item');

    try {
      // Realizar a consulta para encontrar o nó com o nome correspondente
      DatabaseEvent event = await databaseRef
          .orderByChild('nome')
          .equalTo(widget.item.nome)
          .once();
      DataSnapshot snapshot = event.snapshot;

      // Verificar se o nó foi encontrado
      if (snapshot.value != null) {
        // Pegar a chave do nó encontrado
        Map<dynamic, dynamic> data = snapshot.value as Map<dynamic, dynamic>;
        String chaveNodo = data.keys.first;

        // Atualizar o objeto no Firebase usando a chave do nó encontrado
        databaseRef.child(chaveNodo).update({
          'nome': novoNome,
          'detalhes': novoDetalhes,
          'ingredientes': novoIngredientes,
          'preco': novoPreco,
          // Adicione aqui outros campos do objeto que deseja atualizar
        });

        // Navegar de volta para a tela anterior
        Navigator.pop(context);
      } else {
        print('Item não encontrado no banco de dados.');
      }
    } catch (error) {
      print('Erro ao consultar o banco de dados: $error');
    }
  }

  @override
  Widget build(BuildContext context) {
    final String hintNome = widget.item.nome;
    final String hintDetalhes = widget.item.detalhes;
    final String hintIngredientes = widget.item.ingredientes;
    final double hintPreco = widget.item.preco;
    final String hintImagem = widget.item.image;
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
                      child: SingleChildScrollView(
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
                                    controller: hintNomeController,
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
                              campoEditarItem(context, hintDetalhesController,
                                  hintDetalhes),
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
                              //teste --------------------
                              campoEditarItem(context,
                                  hintIngredientesController, hintIngredientes),
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
                                    controller: hintPrecoController,
                                    decoration: InputDecoration(
                                        hintText: hintPreco.toString(),
                                        hintStyle: TextStyle(
                                            fontWeight: FontWeight.w800,
                                            color: Color(0xFF898989))),
                                  ),
                                ),
                              ),
                              ElevatedButton(
                                  onPressed: () {
                                    atualizarItens();
                                  },
                                  child: Text('ENVIAR'))
                            ],
                          ),
                        ),
                      ],
                    ),
                  )),
                ),
              )),
          Align(
            alignment: Alignment(0, -0.58),
            child: SizedBox(
              width: 356, // Defina a largura máxima desejada
              height: 304, // Defina a altura máxima desejada
              child: Image.asset(
                  hintImagem), // Substitua 'hintImagem' pelo caminho da sua imagem
            ),
          )
        ],
      ),
    );
  }
}
