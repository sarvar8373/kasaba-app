import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_mobilek/app_drawer.dart';
import 'package:get/get.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:new_mobilek/components/home_appbar.dart';
import 'package:new_mobilek/components/state.dart';

class InfoTrade extends StatefulWidget {
   const InfoTrade({ Key key }) : super(key: key);
  @override
  State<InfoTrade> createState() => _InfoTradeState();
}
class _InfoTradeState extends State<InfoTrade> {
   String textFrom = '';

  getData() async{
    String response;
    response = await rootBundle.loadString('assets/text-doc/UzTradeDoc.txt');
    setState(() {
      textFrom = response;
    });
  }
  void initState(){
    getData();
    super.initState();
  }
  @override  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(),
      body:SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(),
          child: Padding(
            padding: EdgeInsets.only(left: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           NewState(image: "assets/images/UzKuf/1.png",),
           NewState(image: "assets/images/UzKuf/2.png",),
           NewState(image: "assets/images/UzKuf/3.png",),
           NewState(image: "assets/images/UzKuf/4.png",),
           NewState(image: "assets/images/UzKuf/5.png",),
           NewState(image: "assets/images/UzKuf/6.png",),
           NewState(image: "assets/images/UzKuf/7.png",),
           NewState(image: "assets/images/UzKuf/8.png",),
           NewState(image: "assets/images/UzKuf/9.png",),
           NewState(image: "assets/images/UzKuf/10.png",),
           NewState(image: "assets/images/UzKuf/11.png",),
           NewState(image: "assets/images/UzKuf/12.png",),
           NewState(image: "assets/images/UzKuf/13.png",),
           NewState(image: "assets/images/UzKuf/14.png",),
           NewState(image: "assets/images/UzKuf/15.png",),
           NewState(image: "assets/images/UzKuf/16.png",),
           NewState(image: "assets/images/UzKuf/17.png",),
           NewState(image: "assets/images/UzKuf/18.png",),
          ],
        ),
      )
        )
        )
    );
  }
}