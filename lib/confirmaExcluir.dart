import 'package:flutter/material.dart';

class ConfirmarExclusao extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Center(
        child: Text('Deletar Item'),
      ),
      content: Text('Tem certeza que quer deletar esse item?'),
      actions: [
        Row(
          children: [
            SizedBox(
              width: 30,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Voltar'),
            ),
            SizedBox(
              width: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Deletar'),
            ),
          ],
        )
      ],
    );
  }
}
