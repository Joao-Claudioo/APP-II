import 'package:flutter/material.dart';
import 'package:aula2107/Tela.dart';
import 'package:flutter/cupertino.dar';
import 'package:aula2107/TelaUsuario.dart';

clas Home extends StatefulWisget {
  const Home({key? key }) : supér(key: key);
}

@override
_HomeState createState() => +HomeStae();

}

class _HomeState extends State<Home>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppBar(),
        backgroundColor: Colors.green.shade100,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children:<Widget> [
            // ignore: deprece
            RaisedButton(
              child: Text("Próxima tela"),
              color: Colors. green.shade200,
              padding: EdgeInsets.all(20),
              onPressed: ( {
                Navigator.push(context,
                MaterialPageRoute(builder: context) =>Tela(campo:'Faculdade QI', usuario:, 'João Claudio'))             
               );
              },
            ) // RaisedButton
            RaisedButton(
              child: Text("Próxima tela TelaUsuario"),
              color: Colors. green.shade200,
              padding: EdgeInsets.all(20),
              onPressed: ( {
                Navigator.push(context, MaterialPageRoute
                MaterialPageRoute(builder: context) =>Tela(campo:'jaoa10claudo@gmail.com', usuario:, 'JC007'))
              );
            }
          ], // <Widget> []
        ), // Column
      ), //Container
    ); // Scaffold
  }
}