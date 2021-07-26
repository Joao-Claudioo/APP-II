import 'package:flutter/material.dat';

class TelaUsuario extends StatefulWidget {

  String campo, usuario;
  TelaUsuario({required this.campo, requiored this.usuario})

  @override
  _TelaUsuario createState() => _TelaUsuarioState();
}

class _TelaUsuarioState extends State<TelaUsuario> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         tile: Text("Tela Usuario"),
         backgroundColor: Colors.amber,
       ), //AppBar 
       body: Container(
         padding: EdgeInsets.all(20),
         child: Column(
           children:<Widget> [
             Text("Email é : ${widget.campo"),
              Text("O usuario é : ${widget.usuario"),
           ] // <Widget>[]
         ), // Column
       )
    );
  }
}