import 'package:flutter/material.dart';

class Pessoal extends StatelessWidget {
  const Pessoal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: _corpo(),
      drawer: _menu(),
    );
  }

  _appBar(){
    return AppBar(
      title: Text("Home"),
    );
  }

  _corpo(){
    return Container(
      child: Text("data"),
    );
  }

  _menu(){
    return Drawer(
      child: Container(
        color: Colors.indigo,
        child: ListView(
          children: [
            SizedBox(height: 20,),
            _imagemPerfil(),
            SizedBox(height: 20,),
            Center(
              child: _textoNome(),
            ),
            SizedBox(height: 20,),
            ListTile(
              leading: Icon(
                Icons.accessibility_new_rounded,
                size: 30,
                color: Colors.white,
              ),
              title: Text(
                  "Home",
                style: TextStyle(
                  color: Colors.red,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.book,
                size: 30,
                color: Colors.white,
              ),
              title: Text(
                "Formação",
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.work_rounded,
                size: 30,
                color: Colors.red,
              ),
              title: Text(
                "Experiência",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

 
  _textoNome(){
    return Text(
        "Vinicius Carduz",
      style: TextStyle(
        color: Colors.purple,
        fontSize: 20,
      ),
    );
  }
}
