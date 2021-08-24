import 'package:flutter/material.dart';
import 'package:payflow/shared/models/boleto_model.dart';
import 'package:payflow/shared/widgets/boleto_list/boleto_list_controller.dart';
import 'package:payflow/shared/widgets/boleto_tile/boleto_tile_widget.dart';

class BoletoListWidget extends StatefulWidget {
  BoletoListWidget({Key? key}) : super(key: key);

  @override
  _BoletoListWidgetState createState() => _BoletoListWidgetState();
}

class _BoletoListWidgetState extends State<BoletoListWidget> {
  final controller = BoletoListController();
  @override
  Widget build(BuildContext context) {
    return Column(children: [
        BoletoTileWidget(
          data: BoletosModel(
            name: "HD externo", 
            dueDate: "26/08/2021",
            value: 521.25,
            barcode: "143265837498304849088"
          ),
        ),
        BoletoTileWidget(
          data: BoletosModel(
            name: "mãe", 
            dueDate: "31/08/2021",
            value: 521.25,
            barcode: "1432658374983002154031"
          ),
        ),
        Container(
          color: Colors.red,
          child: BoletoTileWidget(
            data: BoletosModel(
              name: "PS5", 
              dueDate: "21/08/2021",
              value: 5000,
              barcode: "143265830452814364856"
            ),
          ),
        ),
        BoletoTileWidget(
          data: BoletosModel(
            name: "Televisão", 
            dueDate: "05/09/2021",
            value: 625.99,
            barcode: "14326583749830431510164"
          ),
        ),
        BoletoTileWidget(
          data: BoletosModel(
            name: "Remédios", 
            dueDate: "25/08/2021",
            value: 25.10,
            barcode: "14326583749830484908815"
          ),
        ),
        Container(
          color: Colors.red,
          child: BoletoTileWidget(
            data: BoletosModel(
              name: "Presente", 
              dueDate: "02/08/2021",
              value: 50,
              barcode: "14326583749832289637258"
            ),
          ),
        )
     ],
    );
  }
}