import 'package:flutter/material.dart';
import 'package:pato_burguer/assets/constantes.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_core/firebase_core.dart';

class ConfirmarExclusao extends StatelessWidget {
  //final DatabaseReference itemRef;
  final String chave;

  ConfirmarExclusao({required this.chave});

  void _removerItem(BuildContext context) {
    // Faz a referência para o nó 'item' e remove o item usando a chave
    DatabaseReference databaseRef =
        FirebaseDatabase.instance.reference().child('item');
    databaseRef.child(chave).remove().then((_) {
      // Exemplo de exibição de mensagem após a exclusão
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Item removido com sucesso!')),
      );
    }).catchError((error) {
      // Exemplo de exibição de mensagem em caso de erro na exclusão
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Erro ao remover o item: $error')),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.transparent,
      content: Container(
        padding: EdgeInsets.zero,
        decoration: BoxDecoration(
          color: Constantes.corFundo,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Text(
                'Deletar Item',
                style: TextStyle(color: Colors.white),
              ),
            ),
            Container(
              color: Colors.white,
              height: 1,
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text('Tem certeza que quer deletar esse item?'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                  ),
                  child: Text(
                    'Voltar',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    _removerItem(context);
                    Navigator.of(context).pop();
                  },
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Color(0xFFFF0000))),
                  child: Text(
                    'Deletar',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
