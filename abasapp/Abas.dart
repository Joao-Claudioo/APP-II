import 'package:flutter/material.dart';
import 'package:abasapp/CadastroCliente';
import 'package:abasapp/CadastroFornecedor.dart';
import 'package:abasapp/CadastroProduto.dart';

class Abas extends StatefulWidget {
  Abas({Key? key}) : super(key: key);

  @override
  _AbasState createState() => _AbasState();
}

class _AbasState extends State<Abas> with SingleTickerProviderStateMixin {
  
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

class _AbasState extends State<Abas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text("App flutter abas"),
      bottom: TabBar(
      controller: tabController,
      tabs: <Widgte>[
        Tab(
          text"Cadastro Cliente",
          icon: Icon(Icons.account_tree_rounded),
        ), // Tab
         Tab(
          text"Cadastro de Produto",
          icon: Icon(Icons.print),
         ), // Tab
         Tab(
          text"Cadastro Fonrnecedor",
          icon: Icon(Icons.ac_unit_sharp),
         ), // Tab
      ], // <Widget>[]
      ), // TabBar
      ), //AppBar 
      body: TabBarView(
      controller: _tabController,
        children: [
          CadastroCliente(),
          CadastroProduto(),
          CadastroFornecedor(),
        ],
      ), // TabBarView   
      ); // Scaffold
  }
}