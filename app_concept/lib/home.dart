import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Teste extends StatefulWidget {
  const Teste({Key? key}) : super(key: key);

  @override
  _TesteState createState() => _TesteState();
}

class _TesteState extends State<Teste> {
  
  TextEditingController numeroController = TextEditingController(); 
  
  String numero = "teste";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _titulo(),
      body: _corpo(),
    );
  }

  
  _corpo(){
    return Container(
      width: 250, 
      color: Colors.black12, 
      child: Column( 
        mainAxisSize: MainAxisSize.max, 
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center, 
        children: <Widget>[ 
          _campo(),
          _botao(),
          _texto(numero),
        ],
      ),
    );
  }
  _titulo(){
    return AppBar(
      title: Text("App Hello"),
      centerTitle: true,
    );
  }
  _campo(){
    return TextField(
      keyboardType: TextInputType.number, 
      decoration: InputDecoration(
          labelText: "Digite um numero", 
          labelStyle:TextStyle(color: Colors.green)),
      textAlign: TextAlign.center,
      style: TextStyle(color: Colors.green, fontSize: 25.0),
      controller: numeroController,
    );
  }
  _texto(String text){
    return Text(text);
  }
  _botao(){
    return RaisedButton(
      color: Colors.yellow,
     
      onPressed: _exibeNumero,
      child: Text(
        "Ok",
        style: TextStyle(
          color: Colors.white,
          fontSize: 30,
        ),
      ),
    );
  }


  void _exibeNumero(){ 
    setState(() {
      numero = numeroController.text; 
    });
  }
}





