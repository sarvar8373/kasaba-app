import 'package:flutter/material.dart';
import 'package:new_mobilek/app_drawer.dart';
import 'package:get/get.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:new_mobilek/components/home_appbar.dart';
import 'package:new_mobilek/pages/info_trade.dart';
import 'package:new_mobilek/pages/law_trade.dart';


class NewScreens extends StatefulWidget {
  const NewScreens({ Key key }) : super(key: key);

  @override
  State<NewScreens> createState() => _NewScreensState();
}

class _NewScreensState extends State<NewScreens> {
 
  @override
   Widget build(BuildContext context) {
    final ButtonStyle style =
        ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));
    return Scaffold(
      appBar: HomeAppBar(),
      body: Padding(
            padding: EdgeInsets.all(10),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                child:MaterialButton(
                      onPressed:() {
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=> InfoTrade() ));
                },
                      minWidth: double.infinity,
                      height: 50,
                      padding: EdgeInsets.all(4),
                      color: Color.fromARGB(255, 30, 72, 156),
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Text(
                        "trade_info2".tr,
                        style: TextStyle(color: Color(0xffffffff)),),
                  ),
              ),
              
              Padding(padding: EdgeInsets.only(bottom: 10)),
              Container(
                width: MediaQuery.of(context).size.width,
                child: MaterialButton(
                      onPressed:() {
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=> LawTrade() ));
                },
                      minWidth: double.infinity,
                      height: 50,
                      padding: EdgeInsets.all(4),
                      color: Color.fromARGB(255, 30, 72, 156),
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Text(
                        "trade_info1".tr,
                        style: TextStyle(color: Color(0xffffffff)),),
                  )
                )
              
            ],
          )
        ),
      )
    );
    }
}