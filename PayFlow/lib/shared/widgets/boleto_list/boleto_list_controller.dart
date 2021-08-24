import 'package:flutter/cupertino.dart';
import 'package:payflow/modules/insert_boleto/insert_boleto_controller.dart';
import 'package:payflow/shared/models/boleto_model.dart';


class BoletoListController {
  final boletosNotifier = ValueNotifier<List<BoletosModel>>(<BoletosModel>[]);
  List<BoletosModel> boletos = <BoletosModel>[];
  set boleto(List<BoletosModel> value)  => boletosNotifier.value = value;

  BoletoListController() {
    getBoletos();
  }

  Future<void> getBoletos() async{
    try {
    final instance = await SharedPreferences.getInstance();
    final response = instance.getStringList("boletos") ?? <String>[];

    boletos = response.map((e) => BoletosModel.fromJson(e)).toList();
    }catch (e) {
      boletos = <BoletosModel>[];
    }
  }
}