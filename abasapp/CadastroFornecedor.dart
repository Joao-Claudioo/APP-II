import 'package:flutter/material.dart';

class CadastroFornecedor extends StatefulWidget {
  CadastroFornecedor({Key? key}) : super(key: key);

  @override
  _CadastroFornecedorState createState() => _CadastroFornecedorState();
}

class _CadastroFornecedorState extends State<CadastroFornecedor> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: SingleChildScrollView(
       padding: EdgeInsets.all(30),
       child: Colum(
         crossAxisAligment: CrossAxisAligment.stretch,
         children:<Widget> [
           Padding(
             padding: EdgeInsets.all(20),
             child: Text(
               "Cadastro do Fornecedor",
               style: TextStyle(fontSize: 25, color)
               fontWeight: FontWeight.normal
             ), // TextStyle
            ), // Text
           ), // Padding
           TextField(
             keyboardType: TextInput.email.Address,
             decoration: InputDecoration(
               labelText: "Digite seu Email",
             ), //InputDecoration
             style: TextStyle(
               fontSize: 18
             ), // TextSize
             controller: _controllerUsuario,
           ) //TextField
           TextField(
             keyboardType: TextInput.number,
             decoration: InputDecoration(
               labelText: "Digite sua idade",
             ), //InputDecoration
             style: TextStyle(
               fontSize: 18
             ), // TextStyle
             controller: _controllerUsuario,
           ) //TextField
           Padding(
             paddding: EdgeInts.only(top: 40),
             //ignore: deprecated_member_use
             child: RaisedButton(
             color: Colors.blue,
             color: Colors.white,
             padding: EdgeInsets.all(15),
             child:Text(
               "Cadastrar do Fornecedor",
               style: TextStyle(fontSize: 20),
             ), // Text
             onPressed: () {},
             ), // RaisedButton
           ), // Padding
         ], // <Widget> []
        ), // Column
      ), // SingleChildScrollView
    ); // Container
  }
}