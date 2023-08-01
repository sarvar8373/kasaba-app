import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:get/get.dart';
import 'package:new_mobilek/components/add_trade.dart';
import 'package:new_mobilek/components/box_direction.dart';
import 'package:new_mobilek/components/list_slider_home.dart';
import 'package:new_mobilek/components/set_title.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        AddTrade(),
        BoxDeroction(),
        SetTitle(title: "news".tr),
        ListSlider()
       
      ],
    );
  }
}





