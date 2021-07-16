import 'package:flutter/material.dart';
import 'dart:math';
//importe do material design vai escrever o método main

void main(){
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false, 
  ));
}
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tela de Cadastro"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
            border: Border.all(width: 3,color: Colors.purple)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // Coloque o espaço livre uniformemente entre as crianças
          crossAxisAlignment: CrossAxisAlignment.center,
          // Coloque as crianças para que seus centros se alinhem com o meio do eixo cruzado.
          children: <Widget>[
            Image.asset("imagens/twitter.png"),
        TextField(// campo de texto
          decoration: InputDecoration(labelText:"digite seu email"),
          keyboardType: TextInputType.emailAddress,
        ),
            TextField(// campo de texto
              decoration: InputDecoration(labelText:"digite sua senha"),
              keyboardType: TextInputType.text,
              obscureText: false,
            ),

            RaisedButton(
              child: Text("Entrar"),
              color: Colors.green,
              onPressed: (){
                print("Cadastrado");
              },
            )
          ],
        ),
      ),
    );


  }
}