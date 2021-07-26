

class CadastroCliente extends StatefulWidget {
  CadastroCliente({Key? key}) : super(key: key);

  @override
  _CadastroClienteState createState() => _CadastroClienteState();
}

class _CadastroClienteState extends State<CadastroCliente> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: SingleChildScrollView(
       padding: EdgeInsets.all(30),
       child: Colum(
         crossAxisAligment: CrossAxisAligment.stretch,
         children: <Widget> [
           Padding(
             padding: EdgeInsets.all(20),
             child: Text(
               "Cadastro de cliente",
               style: TextStyle(fontSize: 25, color)
               fontWeight: FontWeight.normal
             ), // TextStyle
            ), // Text
           ), // Padding
           TextField(
             keyboardType: TextInput.text,
             decoration: InputDecoration(
               labelText: "Digite seu Nome",
             ), //InputDecoration
             style: TextStyle(
               fontSize: 18
             ), // TextSize
             controller: _controllerUsuario,
           ) //TextField
           TextField(
             keyboardType: TextInput.number,
             decoration: InputDecoration(
               labelText: "Digite seu cpf",
             ), //InputDecoration
             style: TextStyle(
               fontSize: 18
             ), // TextSize
             controller: _controllerUsuario,
           ) //TextField
           TextField(
             keyboardType: TextInput.number,
             decoration: InputDecoration(
               labelText: "Digite sua idade",
             ), //InputDecoration
             style: TextStyle(
               fontSize: 18
             ), // TextStyle
             controller: _controllerUsuario,
           ) //TextField
           Padding(
             paddding: EdgeInts.only(top: 40),
             //ignore: deprecated_member_use
             child: RaisedButton(
             color: Colors.blue,
             color: Colors.white,
             padding: EdgeInsets.all(15),
             child:Text(
               "Cadastrar Cliente",
               style: TextStyle(fontSize: 20),
             ), // Text
             onPressed: () {},
             ), // RaisedButton
           ), // Padding
         ], // <Widget> []
        ), // Column
      ), // SingleChildScrollView
    ); // Container
  }
}