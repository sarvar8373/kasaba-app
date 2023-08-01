import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_mobilek/app_drawer.dart';
import 'package:get/get.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:new_mobilek/components/home_appbar.dart';
import 'package:new_mobilek/components/state.dart';

class LawTrade extends StatefulWidget {
   const LawTrade({ Key key }) : super(key: key);
  @override
  State<LawTrade> createState() => _LawTradeState();
}
class _LawTradeState extends State<LawTrade> {
  
  void initState(){
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
           NewState(image: "assets/images/UzKuf/ЎзКУФ1.png",),
           NewState(image: "assets/images/UzKuf/ЎзКУФ2.png",),
           NewState(image: "assets/images/UzKuf/ЎзКУФ3.png",),
           NewState(image: "assets/images/UzKuf/ЎзКУФ4.png",),
           NewState(image: "assets/images/UzKuf/ЎзКУФ5.png",),
           NewState(image: "assets/images/UzKuf/ЎзКУФ6.png",),
           NewState(image: "assets/images/UzKuf/ЎзКУФ7.png",),
           NewState(image: "assets/images/UzKuf/ЎзКУФ8.png",),
           NewState(image: "assets/images/UzKuf/ЎзКУФ9.png",),
           NewState(image: "assets/images/UzKuf/ЎзКУФ10.png",),
           NewState(image: "assets/images/UzKuf/ЎзКУФ11.png",),
           NewState(image: "assets/images/UzKuf/ЎзКУФ12.png",),
           NewState(image: "assets/images/UzKuf/ЎзКУФ13.png",),
           NewState(image: "assets/images/UzKuf/ЎзКУФ14.png",),
           NewState(image: "assets/images/UzKuf/ЎзКУФ15.png",),
           NewState(image: "assets/images/UzKuf/ЎзКУФ16.png",),
           NewState(image: "assets/images/UzKuf/ЎзКУФ17.png",),
           NewState(image: "assets/images/UzKuf/ЎзКУФ18.png",),
           NewState(image: "assets/images/UzKuf/ЎзКУФ19.png",),
           NewState(image: "assets/images/UzKuf/ЎзКУФ20.png",),
          ],
        ),
      )
        )
        )
    );
  }
}