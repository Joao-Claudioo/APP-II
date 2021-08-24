import 'package:flutter/material.dart';
import 'package:payflow/modules/home/home_page.dart';
class Cadastro extends StatefulWidget {
  @override
  _CadastroState createState() => _CadastroState();
}
class _CadastroState extends State<Cadastro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
               TextField(
                autofocus: true,
                keyboardType: TextInputType.emailAddress,
                style: TextStyle(color: Colors.white, fontSize: 25),
                decoration: InputDecoration(
                  labelText:"Nome do usuário*",
                  labelStyle: TextStyle(color: Colors.black),
                )
           ),
              Divider(),
              TextField(
                autofocus: true,
                obscureText: true,
                keyboardType: TextInputType.text,
                style: TextStyle(color: Colors.white, fontSize: 25),
                decoration: InputDecoration(
                  labelText:"Senha do usuário*",
                  labelStyle: TextStyle(color: Colors.black),
                )
              ),
              Divider(),
              ButtonTheme(
                height: 60.0,
                child: RaisedButton(
                  onPressed: () => {
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => HomePage())),
                    print("pressionei o botão"),
                  },
                  shape: new RoundedRectangleBorder(borderRadius: 
new BorderRadius.circular(30.0)),
                  child: Text(
                    "Entrar",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                  color:Colors.red,
                ),
              ),
            ],
         ),
        ),
      )
   );
  }
}