import 'package:flutter/material.dart';
import 'package:pato_burguer/editarItem.dart';
import 'assets/constantes.dart';
import 'models/Item_cardapio.dart';
import 'lancheCard.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_core/firebase_core.dart';
import 'main.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class _AlteraCardapioState extends State<AlteraCardapio> {
  void _navegarParaEditar(BuildContext context, ItemCardapio item) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => editarItem(item: item),
      ),
    );
  }

  List<ItemCardapio> _itens = [];

  @override
  void initState() {
    super.initState();
    _carregaDoFirebase();
  }

  void _carregaDoFirebase() async {
    DatabaseReference databaseRef =
        FirebaseDatabase.instance.ref().child('item');

    try {
      DatabaseEvent event = await databaseRef.once();
      DataSnapshot snapshot = event.snapshot;
      if (snapshot.value == null) {
        print("Dados do Firebase estão vazios.");
        return;
      }
      Map<dynamic, dynamic> data = snapshot.value as Map<dynamic, dynamic>;
      List<ItemCardapio> itens = [];

      data.forEach((key, value) {
        itens.add(ItemCardapio(
          value['nome'] ?? '',
          value['detalhe'] ?? '',
          value['ingredientes'] ?? '',
          (value['preco'] is int)
              ? (value['preco'] as int).toDouble()
              : (value['preco'] is double)
                  ? value['preco']
                  : 0.0,
          value['tipo'] ?? '',
          value['imagem'] ?? '',
        ));
      });

      setState(() {
        _itens = itens;
      });
    } catch (error) {
      print("Erro ao carregar dados do Firebase: $error");
    }
  }

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
                fontSize: 24,
              ),
            ),
          ),
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
                  topRight: Radius.circular(18),
                ),
              ),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                ),
                itemBuilder: (context, index) {
                  if (index < _itens.length) {
                    // Verifica se o índice é válido antes de retornar o LancheCard
                    return LancheCard(
                      _itens[index],
                      onTap: () => _navegarParaEditar(context, _itens[index]),
                    );
                  } else {
                    return null;
                  }
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AlteraCardapio extends StatefulWidget {
  @override
  State<AlteraCardapio> createState() => _AlteraCardapioState();
}
