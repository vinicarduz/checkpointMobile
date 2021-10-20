import 'package:flutter/material.dart';
import 'package:meu_perfil/pessoal.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meu Perfil',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       

        primarySwatch: Colors.indigo,
      ),
      home: Pessoal(),
    );
  }
}
