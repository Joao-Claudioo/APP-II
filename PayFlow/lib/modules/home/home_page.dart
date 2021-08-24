import 'package:flutter/material.dart';
import 'package:payflow/modules/extract/extract_page.dart';
import 'package:payflow/modules/home/home_controller.dart';
import 'package:payflow/modules/insert_boleto/insert_boleto_page.dart';
import 'package:payflow/shared/themes/app_colors.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';
import 'package:payflow/shared/widgets/boleto_list/boleto_list_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controler = HomeController();
  final pages = [
    Container(child: BoletoListWidget(),),
    ExtractPage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(152),
        child: Container(
          height: 152,
          color: AppColors.primary,
          child: Center(
            child: ListTile(
              title: Text.rich(
                TextSpan(
                  text: "Olá, ",
                  style: TextStyles.titleRegular,
                  children: [
                    TextSpan(
                      text: "João", style: TextStyles.titleBoldBackground
                    ),
                  ]
                ),
              ),
              subtitle: Text(
                "Mantenha seus boletos em dia",
                style: TextStyles.captionShape,
                ),
            ),
          )
        ),
        ),
        body:pages[controler.currentPage],
        bottomNavigationBar: Container(
          height: 90,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            IconButton(
              onPressed: (){
                controler.setPage(0);
                setState(() {
                  
                });
              }, 
              icon: Icon(Icons.home,
              color: AppColors.primary,
              )),
              GestureDetector(
                onTap: () {
                  //botão de cadastro de boleto
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => InsertBoleto()));
                },
                child: Container(
                  width: 56,
                  height: 56,
                  decoration: BoxDecoration(
                    color: AppColors.primary,
                  borderRadius: BorderRadius.circular(5),  
                  ),
                  child: Icon(Icons.add_box_outlined,
                  color: AppColors.background,
                ),
                ),
              ),
            IconButton(
              onPressed: (){
                controler.setPage(1);
                setState(() {
                  
                });
              },
              icon: Icon(Icons.description_outlined,
              color: AppColors.body,
              ),             
              ),
          ],),
        ),
    );
  }
}