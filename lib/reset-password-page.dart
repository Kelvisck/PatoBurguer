import 'package:flutter/material.dart';
import 'package:pato_burguer/assets/constantes.dart';
class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {

  bool _showpassord = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(Constantes.corFundo.value),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.black38,
          onPressed: () => Navigator.pop(context, false),),
        title: Text("Alterar Senha"),
      ),
      backgroundColor: Color(Constantes.corFundo.value),
      body: Stack(
        children: [
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
            left: 130,
          ),
          Positioned(
              top: 110,
              left: 23,
              //container de fundo ------------------------------------------------------------------
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
                  /*padding: const EdgeInsets.all(17.0),*/
                  padding: const EdgeInsets.only(top: 17, bottom: 17),
                  child: TextFormField(
                     style: new TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontFamily: Constantes.fonteRoboto,
                            ),
                          decoration: InputDecoration(
                              icon: Icon(Icons.lock, color:  Colors.black,),
                              hintText: "Senha",
                              hintStyle: TextStyle(color: Colors.black),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
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
                ),
                             
              )
              )
              
       ]
      ),
      );
  }
}
