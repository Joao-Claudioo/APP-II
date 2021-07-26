import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CoresFrias extends StatefulWidget {
  const CoresFrias({ Key? key }) : super(key: key);

  @override
  _CoresFriasState createState() => _CoresFriasState();
}

class _CoresFriasState extends State<CoresFrias> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cores Primárias',  style: TextStyle(color: Colors.black)),
      ),
      body: Center(child:Column(
        children: <Widget>[
          Container(
            color: Colors.blue,
            height: 150,
            width: 150,
          ),
          Container(
              color: Colors.green,
              height: 150,
              width: 150,
            ),
          Container(
            color: Colors.purple,
            height: 150,
            width: 150,
          ),
          Container(
            color: Colors.cyan,
            height: 150,
            width: 150,
          ),
           RaisedButton(
            child: Text("Cores Quentes"),
            color: Colors.black,
            padding: EdgeInsets.all(20),
            onPressed:(){
              Navigator.push(context, MaterialPageRoute(
                  builder: (context) => CoresQuentes()
              ),
              );
               ),
    ],
      ),
    ),
    );
  }
}