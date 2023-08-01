import 'package:flutter/material.dart';
import 'package:pato_burguer/assets/constantes.dart';
import 'package:pato_burguer/assets/widgetsFunctions.dart';
class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {

  bool _showpassord = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(Constantes.corFundo.value),
      body: Stack(
        children: [
          Positioned(
            top: 22,
            left: 3,
            child:
              IconButton(
                onPressed: ()=> Navigator.pop(context, false), 
                icon: Icon(
                  Icons.arrow_back_ios_new_rounded, 
                  color: Colors.white,
                  )
                ),
                ),
          Positioned(
            child: Text(
              'Alterar Senha',
              style: TextStyle(
                  fontFamily: 'Roboto',
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                  fontSize: 24),
            ),
            top: 32,
            left: 120,
          ),
          Positioned(
              top: 110,
              left: 23,
              //container de fundo ------------------------------------------------------------------
              child: 
               Padding(
                padding: const EdgeInsets.only(top: 30, bottom: 30),
                child: Container(
                  width: 350,
                  height: 450,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(18),
                          topRight: Radius.circular(18),
                          bottomLeft: Radius.circular(18),
                          bottomRight: Radius.circular(18)
                      )
                    ),
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 40,
                        ),
                        Align(
                          alignment: 
                            Alignment(-1, 0),
                          child: 
                            textoSimples("Senha Atual", 21),
                        ),
                        TextFormField(
                          autofocus: true,
                          style: new TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontFamily: Constantes.fonteRoboto,
                              ),
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(7))
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(7))
                              ),
                              //labelText: "Senha Atual",
                              labelStyle: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Roboto',
                              ),
                              suffixIcon: GestureDetector(
                                child: Icon(_showpassord == false ? Icons.visibility_off: Icons.visibility,color: Colors.black,),
                                onTap: () {
                                  setState((){
                                   _showpassord = !_showpassord;
                                  });
                                },
                              )
                            ),
                              obscureText: _showpassord == false ? true: false,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Align(
                            alignment: 
                              Alignment(-1, 0),
                            child: 
                              textoSimples("Nova Senha", 21),
                          ),
                          TextFormField(
                            autofocus: true,
                            style: new TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontFamily: Constantes.fonteRoboto,
                              ),
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
                                border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(7))
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(7))
                                ),
                                //labelText: "Nova Senha",
                                labelStyle: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Roboto',
                                  ),
                                suffixIcon: GestureDetector(
                                  child: Icon(_showpassord == false ? Icons.visibility_off: Icons.visibility,color: Colors.black,),
                                  onTap: () {
                                    setState((){
                                      _showpassord = !_showpassord;
                                    });
                                  },
                                )
                              ),
                              obscureText: _showpassord == false ? true: false,
                          ),
                          SizedBox(
                            height: 10,
                            ),
                          Align(
                            alignment: 
                              Alignment(-1, 0),
                            child: 
                              textoSimples("Confirmar Senha", 21),
                          ),
                          TextFormField(
                            autofocus: true,
                            style: new TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontFamily: Constantes.fonteRoboto,
                              ),
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(7))
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(7))
                                ),
                                //labelText: "Confirmar Senha",
                                labelStyle: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Roboto',
                                ),
                                suffixIcon: GestureDetector(
                                  child: Icon(_showpassord == false ? Icons.visibility_off: Icons.visibility,color: Colors.black,),
                                  onTap: () {
                                    setState((){
                                      _showpassord = !_showpassord;
                                    });
                                  },
                                )
                              ),
                              obscureText: _showpassord == false ? true: false,
                          ),
                          SizedBox(
                            height: 80,
                          ),
                          ElevatedButton(
                                style: ButtonStyle(
                                    minimumSize: MaterialStateProperty.all(
                                        Size(355, 50)),
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    )),
                                    backgroundColor:
                                        MaterialStatePropertyAll<Color>(
                                            Constantes.corFundo)),
                                onPressed: () {},
                                child: Text(
                                  'Salvar',
                                  style: TextStyle(
                                      fontSize: 24, fontFamily: 'Poppins-Bold'),
                                ),
                              )
                      ],
                    ),
                  )
                ),
              )
              )
              
       ]
      ),
      );
  }
}
