import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Tela extends StatefulWidsgets {

    String campo, usuario;

    Tela({required this.campo, requiored this.usuario});

    @override
    _TelaState createState() => _TelaState();
}

class _TelaState extends State<Tela> {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text("Tela 2),
                backgroundColor: Colors.green.shade100,
            ) // AppBar
            body: Container(
                padding: EdgeInsets.all(20),
                child: Column(
                    children:<Widget> [
                        Text("Faculdade é : ${widget.campo"),
                        Text("O usuário é : ${widget.usuario"),
                    ], // <Widget>[]
                ), // Column
            ), // Container
        ); // Scaffold
    }    
}