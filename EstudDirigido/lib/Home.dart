import 'package:appfluttern1/CoresPrimarias.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: new AppBar(
        title: const Text('Mundo da Cores', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.cyanAccent,
      ),
      body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Image.asset(
          "img/cores.jpg",
          width: 100,
          height: 100,
        ),
      Text("Descubra as cores!"),
      //ignore: deprecated_member_use
      RaisedButton(
      child: Text("Cores Primárias"),
        color: Colors.black,
        padding: EdgeInsets.all(20),
        onPressed:(){
          Navigator.push(context, MaterialPageRoute(
              builder: (context) => CoresPrimarias()
          ),
          );
        },
      ),
    ],
      ),
    ),
    );
  }
}