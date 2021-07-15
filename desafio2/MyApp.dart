import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState;();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       home: Scaffold()// estrutura principal(base) da aplicação
        sappBar: AppBar(
          title: Text("VIAGEM PELO ESPAÇO")
          backgroundColor: Colors.pinkAccent,
       ), //AppBar
       body: Center(//no corpo vai ter uma coluna vertical que tra filhos
         child: Column(
           mainAxisAligment: MainAxisAligment.SpaceEvenly,
           children: [
             Image.asset("Imagens/astronauta.png"),
              RaisedButton(
            child: Text("Astronauta"),
            color: Colors.pinkAccent,
            onPressed: (){
              print("O foguete saiu da terra")
            }
             Image.asset("Imagens/espaco.png"),
              RaisedButton(
            child: Text("Espaço"),
            color: Colors.pinkAccent,
            onPressed: (){
              print("Está no espaço")
            }
             Image.asset("Imagens/planeta.png"),
              RaisedButton(
            child: Text("Novo planeta"),
            color: Colors.pinkAccent,
            onPressed: (){
              print("Foguete chegou em um novo planeta")
            }
             Image.asset("Imagens/pin.png"),  
              RaisedButton(
            child: Text("Bandeira"),
            color: Colors.pinkAccent,
            onPressed: (){
              print("Puseram seu pin no solod o novo planera")
            }           
          ],
         ), // Row
       ), // Row
      ), // Center
     ), // Scaffold    
    ); // MateriaslApp
  }
}