import 'package:appfluttern1/CoresFrias.dart';
import 'package:flutter/material.dart';

class CoresSecundarias extends StatefulWidget {
  const CoresSecundarias({ Key? key }) : super(key: key);

  @override
  _CoresSecundariasState createState() => _CoresSecundariasState();
}

class _CoresSecundariasState extends State<CoresSecundarias> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cores Secundárias',  style: TextStyle(color: Colors.black)),
      ),
      body: Center(child:Column(
        children: <Widget>[
          Container(
            color: Colors.green,
            height: 150,
            width: 150,
          ),
          Container(
              color: Colors.orange,
              height: 150,
              width: 150,
            ),
          Container(
            color: Colors.purple,
            height: 150,
            width: 150,
          ),
          RaisedButton(
              child: Text("Cores Frias"),
              color: Colors.black,
              padding: EdgeInsets.all(20),
              onPressed:(){
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => CoresFrias()
                ),
                );
        ]
      ),
      ),
    );
  }
}
   