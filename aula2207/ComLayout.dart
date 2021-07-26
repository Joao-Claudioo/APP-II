import 'package:flutter/material.dart';

class extends StatefulWidget {
    const ComLayout({ Key? key}) : super (key: key);

@override
_ComLayoutState createState() => _ComLayoutState();
}

class -ComLayoutState extends State<ComLayout> {
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            home: DefaultTabLayoutController(
                length: 4,
                child: Scaffold(
                 appBar: ApppBar(
                  bottom: TabBar(
                   tabs: [
                    Tab(icon: Icon(Icons.art_track)),
                    Tab(icon: Icon(Icons.portrait)),
                    Tab(icon: Icon(Icons.landscape)),
                    Tab(icon: Icon(Icons.palette)),
                            ],
                        ), //TabBar
                        titles: Text("Artes do Mundo),
                        backgroundColor: Colors.lightBlue,
                    ), //ApppBar
                    body: Container(
                    child: TabBarView(
                     children: <Widget> [
                         Image.asset("img/monalisa.jpg"),
                         Image.asset("img/obeijo.jpg"),
                         Image.asset("img/sissi.jpg"),
                         Image.asset("img/picasso.jpg"),
                     ], //<Widget> []
                    ),
                  ),
                ),
            ),
        ),
      );
    }
}