import 'package:appfluttern1/CoresSecundarias.dart';
import 'package:flutter/material.dart';

class CoresPrimarias extends StatefulWidget {
  const CoresPrimarias({ Key? key }) : super(key: key);

  @override
  _CoresPrimariasState createState() => _CoresPrimariasState();
}

class _CoresPrimariasState extends State<CoresPrimarias> {
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
              color: Colors.red,
              height: 150,
              width: 150,
            ),
          Container(
            color: Colors.yellow,
            height: 150,
            width: 150,
          ),
           RaisedButton(
            child: Text("Cores Secundárias"),
            color: Colors.black,
            padding: EdgeInsets.all(20),
            onPressed:(){
              Navigator.push(context, MaterialPageRoute(
                  builder: (context) => CoresSecundarias()
              ),
              );
               ),
    ],
      ),
    ),
    );
  }
}