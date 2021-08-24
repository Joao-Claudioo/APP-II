import 'package:flutter/material.dart';
import 'Menu.dart';
import 'Home.dart';
import 'Empresa.dart';
import 'Produto.dart';
import 'Sobre.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu link'),
        iconTheme: IconThemeData(color: Colors.greenAccent),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Text("Gestão de Pessoas"),
              decoration: BoxDecoration(
                color: Colors.lightGreen,
                image: DecorationImage(
                  image: AssetImage("imagem/perfil.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ListTile(
              title: Text(
                "Menu Home",
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 20,
                ),
              ),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Home()));
              },
            ),
            ListTile(
              title: Text("Menu empresa"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Empresa()));
              },
            ),
            ListTile(
              title: Text("Menu Sobre"),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Sobre()));
              },
            ),
            Divider(),
            ListTile(
              tileColor: Colors.teal,
              title: Text("Profissão"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Produto()));
              },
            ),
            Divider(),
            ListTile(
              title: Text("Sair"),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: Center(
        child: Text("Conteúdo body"),
      ),
    );
  }
}