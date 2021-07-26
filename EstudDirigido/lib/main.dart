import 'package:appfluttern1/Home.dart';
import 'package:flutter/material.dart';

void main() {runApp(MaterialApp(
	title: 'Navegação entre cores',
	 theme: ThemeData(
	   primarySwatch: Colors.blue
         ),
         home: Home(),
         debugShowCheckedModeBanner: false,
      )
    );
}