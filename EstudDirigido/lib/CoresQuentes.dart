import 'package:flutter/material.dart';
import 'package:appfluttern1/Home.dart';

class CoresQuentes extends StatefulWidget {
  const CoresQuentes({ Key? key }) : super(key: key);

  @override
  _CoresQuentesState createState() => _CoresQuentesState();
}

class _CoresQuentesState extends State<CoresQuentes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cores Primárias',  style: TextStyle(color: Colors.black)),
      ),
      body: Center(child:Column(
        children: <Widget>[
          Container(
            color: Colors.red,
            height: 150,
            width: 150,
          ),
          Container(
              color: Colors.orange,
              height: 150,
              width: 150,
            ),
          Container(
            color: Colors.pink,
            height: 150,
            width: 150,
          ),
           RaisedButton(
            child: Text("Início"),
            color: Colors.black,
            padding: EdgeInsets.all(20),
            onPressed:(){
              Navigator.push(context, MaterialPageRoute(
                  builder: (context) => Home()
              ),
              );
               ),
    ],
      ),
    ),
    );
  }
}