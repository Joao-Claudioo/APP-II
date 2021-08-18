import 'package:flutter/material.dart';

class formulario extends StatefulWidget {
  formulario({Key? key}) : super(key: key);

  @override
  _formularioState createState() => _formularioState();
}

class _formularioState extends State<formulario> {
  //capturar os valores digitados nos campos
  TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Forms"),
        backgroundColor: Colors.purpleAccent,
      ),
      body: Column(
        children: <Widget>[      
          Padding(
           padding: EdgeInsets.only(top: 30),
            //padding: EdgeInsets.only(top:50),
            child: TextField(
              keyboardType: TextInputType.name,
              decoration: InputDecoration(labelText: "Nome no Cartão*"),
              maxLength: 40,
              obscureText: false,
            ),
          ),
           Padding(
            padding: EdgeInsets.only(top: 5),
            child: TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: "Número do Cartão*" ),
              maxLength: 16,
              obscureText: false,
              //style: TextStyle(fontSize: 10),
            ),
          ),
          Padding(
          padding: EdgeInsets.only(top: 5),
            child: TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: "CVV*" ),
              maxLength: 3,
              obscureText: true,
            ),
          ),
          Padding(
           padding: EdgeInsets.only(top: 5),
            child: TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: "CPF*" ),
              maxLength: 11,
              obscureText: false,             
            ),
          ),
          Padding(
           padding: EdgeInsets.only(top: 5),
            child: TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: "Código Postal*" ),
              maxLength: 8,
              obscureText: false,             
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 5),
            child: TextField(
              keyboardType: TextInputType.name,
              decoration: InputDecoration(labelText: "Endereço" ),              
              maxLength: 20,
              obscureText: false,
            ),
          ),
           Padding(
            padding: EdgeInsets.only(top: 5),
            child: TextField(
              keyboardType: TextInputType.name,
              decoration: InputDecoration(labelText: "E-mail" ),              
              maxLength: 40,
              obscureText: false,
            ),
          ),
           Padding(
            padding: EdgeInsets.only(top: 5),
            child: TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: "Telefone" ),              
              maxLength: 11,
              obscureText: false,
            ),
          ),
          /////////////CHECKBOX INFELIZMENTE NÃO CONSEGUI
          //ignore: deprecated_member_use
          RaisedButton(
            child: Text("Concluir Pagamento"),
            color: Colors.purpleAccent,
            onPressed: () {
              print("Pagamento concluído" +_textEditingController.text);
            },
          ),
        ],
      ),
    );   
  }
}
